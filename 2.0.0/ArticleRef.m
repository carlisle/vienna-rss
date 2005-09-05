//
//  ArticleRef.m
//  Vienna
//
//  Created by Steve on 9/3/05.
//  Copyright (c) 2004-2005 Steve Palmer. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "ArticleRef.h"

@implementation ArticleReference

/* initWithReference
 */
-(id)initWithReference:(NSString *)aGuid inFolder:(int)aFolderId
{
	if ((self = [super init]) != nil)
	{
		guid = [aGuid retain];
		folderId = aFolderId;
	}
	return self;
}

/* makeReference
 * Create a new ArticleReference using the information in the specified article.
 */
+(ArticleReference *)makeReference:(Message *)aMessage
{
	return [[[ArticleReference alloc] initWithReference:[aMessage guid] inFolder:[aMessage folderId]] autorelease];
}

/* makeReferenceFromGUID
 * Create a new ArticleReference using the information in the specified article.
 */
+(ArticleReference *)makeReferenceFromGUID:(NSString *)aGuid inFolder:(int)folderId
{
	return [[[ArticleReference alloc] initWithReference:aGuid inFolder:folderId] autorelease];
}

/* guid
 * Return the reference GUID.
 */
-(NSString *)guid
{
	return guid;
}

/* folderId
 * Return the reference folder ID.
 */
-(int)folderId
{
	return folderId;
}

/* dealloc
 * Clean up behind ourselves.
 */
-(void)dealloc
{
	[guid release];
	[super dealloc];
}
@end
