{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html

module Stratosphere.Resources.CloudFormationCustomResource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFormationCustomResource. See
-- 'cloudFormationCustomResource' for a more convenient constructor.
data CloudFormationCustomResource =
  CloudFormationCustomResource
  { _cloudFormationCustomResourceServiceToken :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFormationCustomResource where
  toJSON CloudFormationCustomResource{..} =
    object $
    catMaybes
    [ Just ("ServiceToken" .= _cloudFormationCustomResourceServiceToken)
    ]

instance FromJSON CloudFormationCustomResource where
  parseJSON (Object obj) =
    CloudFormationCustomResource <$>
      obj .: "ServiceToken"
  parseJSON _ = mempty

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
