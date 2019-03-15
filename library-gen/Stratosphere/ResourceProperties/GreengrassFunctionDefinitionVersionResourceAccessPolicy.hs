{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionResourceAccessPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassFunctionDefinitionVersionResourceAccessPolicy. See
-- 'greengrassFunctionDefinitionVersionResourceAccessPolicy' for a more
-- convenient constructor.
data GreengrassFunctionDefinitionVersionResourceAccessPolicy =
  GreengrassFunctionDefinitionVersionResourceAccessPolicy
  { _greengrassFunctionDefinitionVersionResourceAccessPolicyPermission :: Maybe (Val Text)
  , _greengrassFunctionDefinitionVersionResourceAccessPolicyResourceId :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionResourceAccessPolicy where
  toJSON GreengrassFunctionDefinitionVersionResourceAccessPolicy{..} =
    object $
    catMaybes
    [ fmap (("Permission",) . toJSON) _greengrassFunctionDefinitionVersionResourceAccessPolicyPermission
    , (Just . ("ResourceId",) . toJSON) _greengrassFunctionDefinitionVersionResourceAccessPolicyResourceId
    ]

-- | Constructor for 'GreengrassFunctionDefinitionVersionResourceAccessPolicy'
-- containing required fields as arguments.
greengrassFunctionDefinitionVersionResourceAccessPolicy
  :: Val Text -- ^ 'gfdvrapResourceId'
  -> GreengrassFunctionDefinitionVersionResourceAccessPolicy
greengrassFunctionDefinitionVersionResourceAccessPolicy resourceIdarg =
  GreengrassFunctionDefinitionVersionResourceAccessPolicy
  { _greengrassFunctionDefinitionVersionResourceAccessPolicyPermission = Nothing
  , _greengrassFunctionDefinitionVersionResourceAccessPolicyResourceId = resourceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-permission
gfdvrapPermission :: Lens' GreengrassFunctionDefinitionVersionResourceAccessPolicy (Maybe (Val Text))
gfdvrapPermission = lens _greengrassFunctionDefinitionVersionResourceAccessPolicyPermission (\s a -> s { _greengrassFunctionDefinitionVersionResourceAccessPolicyPermission = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-resourceid
gfdvrapResourceId :: Lens' GreengrassFunctionDefinitionVersionResourceAccessPolicy (Val Text)
gfdvrapResourceId = lens _greengrassFunctionDefinitionVersionResourceAccessPolicyResourceId (\s a -> s { _greengrassFunctionDefinitionVersionResourceAccessPolicyResourceId = a })
