{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html

module Stratosphere.Resources.CloudFormationCustomResource where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFormationCustomResource. See
-- | 'cloudFormationCustomResource' for a more convenient constructor.
data CloudFormationCustomResource =
  CloudFormationCustomResource
  { _cloudFormationCustomResourceServiceToken :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFormationCustomResource where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON CloudFormationCustomResource where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'CloudFormationCustomResource' containing required fields
-- | as arguments.
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
