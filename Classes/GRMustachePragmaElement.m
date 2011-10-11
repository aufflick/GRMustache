// The MIT License
// 
// Copyright (c) 2010 Gwendal Roué
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "GRMustachePragmaElement_private.h"

NSString* const GRMustachePragmaElementErrorDomain = @"GRMustachePragmaElementErrorDomain";

@interface GRMustachePragmaImportElement: GRMustachePragmaElement
+ (id<GRMustacheRenderingElement>)pragmaImportElementWithModuleName:(NSString *)moduleName error:(NSError **)outError;
@end

@implementation GRMustachePragmaElement

+ (id<GRMustacheRenderingElement>)pragmaElementWithString:(NSString *)string error:(NSError **)outError;
{
//    // check for {{% import name }}
//    NSRange range = [string rangeOfString:@"import"];
//    if (range.location != NSNotFound) {
//        NSString *moduleName = [[string substringFromIndex:range.location+range.length] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//        return [GRMustachePragmaImportElement pragmaImportElementWithModuleName:moduleName error:outError];
//    }
    
    if (outError != NULL) {
        *outError = [NSError errorWithDomain:GRMustachePragmaElementErrorDomain code:GRMustachePragmaElementUnsupportedPragmaError userInfo:nil];
    }
    return nil;
}

- (NSString *)renderContext:(GRMustacheContext *)context
{
    return nil;
}

@end

@implementation GRMustachePragmaImportElement

+ (id<GRMustacheRenderingElement>)pragmaImportElementWithModuleName:(NSString *)moduleName error:(NSError **)outError
{
    // TODO
}

@end
