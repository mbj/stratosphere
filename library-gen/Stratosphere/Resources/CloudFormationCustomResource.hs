{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html

module Stratosphere.Resources.CloudFormationCustomResource where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationCustomResource. See
-- 'cloudFormationCustomResource' for a more convenient constructor.
data CloudFormationCustomResource =
  CloudFormationCustomResource
  { _cloudFormationCustomResourceServiceToken :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CloudFormationCustomResource where
  toResourceProperties CloudFormationCustomResource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFormation::CustomResource"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ServiceToken",) . toJSON) _cloudFormationCustomResourceServiceToken
        ]
    }

-- | Constructor for 'CloudFormationCustomResource' containing required fields
-- as arguments.
cloudFormationCustomResource
  :: Val Text -- ^ 'cfcrServiceToken'
  -> CloudFormationCustomResource
cloudFormationCustomResource serviceTokenarg =
  CloudFormationCustomResource
  { _cloudFormationCustomResourceServiceToken = serviceTokenarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html#cfn-customresource-servicetoken
cfcrServiceToken :: Lens' CloudFormationCustomResource (Val Text)
cfcrServiceToken = lens _cloudFormationCustomResourceServiceToken (\s a -> s { _cloudFormationCustomResourceServiceToken = a })
