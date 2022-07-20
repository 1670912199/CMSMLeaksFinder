/**
 * Copyright (c) 2016-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>

//#import <string>

namespace FB { namespace RetainCycleDetector { namespace Parser {
  class BaseType {
  public:
    virtual ~BaseType() {}
  };
  
  class Unresolved: public BaseType {
  public:
    std::string value;
    Unresolved(std::string value): value(value) {}
    Unresolved(Unresolved&&) = default;
    Unresolved &operator=(Unresolved&&) = default;
    
    Unresolved(const Unresolved&) = delete;
    Unresolved &operator=(const Unresolved&) = delete;
  };
} } }
