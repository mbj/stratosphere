{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-resourceaccesspolicy.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionResourceAccessPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassFunctionDefinitionResourceAccessPolicy. See
-- 'greengrassFunctionDefinitionResourceAccessPolicy' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionResourceAccessPolicy =
  GreengrassFunctionDefinitionResourceAccessPolicy
  { _greengrassFunctionDefinitionResourceAccessPolicyPermission :: Maybe (Val Text)
  , _greengrassFunctionDefinitionResourceAccessPolicyResourceId :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionResourceAccessPolicy where
  toJSON GreengrassFunctionDefinitionResourceAccessPolicy{..} =
    object $
    catMaybes
    [ fmap (("Permission",) . toJSON) _greengrassFunctionDefinitionResourceAccessPolicyPermission
    , (Just . ("ResourceId",) . toJSON) _greengrassFunctionDefinitionResourceAccessPolicyResourceId
    ]

-- | Constructor for 'GreengrassFunctionDefinitionResourceAccessPolicy'
-- containing required fields as arguments.
greengrassFunctionDefinitionResourceAccessPolicy
  :: Val Text -- ^ 'gfdrapResourceId'
  -> GreengrassFunctionDefinitionResourceAccessPolicy
greengrassFunctionDefinitionResourceAccessPolicy resourceIdarg =
  GreengrassFunctionDefinitionResourceAccessPolicy
  { _greengrassFunctionDefinitionResourceAccessPolicyPermission = Nothing
  , _greengrassFunctionDefinitionResourceAccessPolicyResourceId = resourceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-resourceaccesspolicy.html#cfn-greengrass-functiondefinition-resourceaccesspolicy-permission
gfdrapPermission :: Lens' GreengrassFunctionDefinitionResourceAccessPolicy (Maybe (Val Text))
gfdrapPermission = lens _greengrassFunctionDefinitionResourceAccessPolicyPermission (\s a -> s { _greengrassFunctionDefinitionResourceAccessPolicyPermission = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-resourceaccesspolicy.html#cfn-greengrass-functiondefinition-resourceaccesspolicy-resourceid
gfdrapResourceId :: Lens' GreengrassFunctionDefinitionResourceAccessPolicy (Val Text)
gfdrapResourceId = lens _greengrassFunctionDefinitionResourceAccessPolicyResourceId (\s a -> s { _greengrassFunctionDefinitionResourceAccessPolicyResourceId = a })
