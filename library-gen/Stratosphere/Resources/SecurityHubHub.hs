{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html

module Stratosphere.Resources.SecurityHubHub where

import Stratosphere.ResourceImports


-- | Full data type definition for SecurityHubHub. See 'securityHubHub' for a
-- more convenient constructor.
data SecurityHubHub =
  SecurityHubHub
  { _securityHubHubTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties SecurityHubHub where
  toResourceProperties SecurityHubHub{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SecurityHub::Hub"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Tags",) . toJSON) _securityHubHubTags
        ]
    }

-- | Constructor for 'SecurityHubHub' containing required fields as arguments.
securityHubHub
  :: SecurityHubHub
securityHubHub  =
  SecurityHubHub
  { _securityHubHubTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-tags
shhTags :: Lens' SecurityHubHub (Maybe Object)
shhTags = lens _securityHubHubTags (\s a -> s { _securityHubHubTags = a })
