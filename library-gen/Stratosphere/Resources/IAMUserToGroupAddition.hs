{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html

module Stratosphere.Resources.IAMUserToGroupAddition where

import Stratosphere.ResourceImports


-- | Full data type definition for IAMUserToGroupAddition. See
-- 'iamUserToGroupAddition' for a more convenient constructor.
data IAMUserToGroupAddition =
  IAMUserToGroupAddition
  { _iAMUserToGroupAdditionGroupName :: Val Text
  , _iAMUserToGroupAdditionUsers :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties IAMUserToGroupAddition where
  toResourceProperties IAMUserToGroupAddition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IAM::UserToGroupAddition"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("GroupName",) . toJSON) _iAMUserToGroupAdditionGroupName
        , (Just . ("Users",) . toJSON) _iAMUserToGroupAdditionUsers
        ]
    }

-- | Constructor for 'IAMUserToGroupAddition' containing required fields as
-- arguments.
iamUserToGroupAddition
  :: Val Text -- ^ 'iamutgaGroupName'
  -> ValList Text -- ^ 'iamutgaUsers'
  -> IAMUserToGroupAddition
iamUserToGroupAddition groupNamearg usersarg =
  IAMUserToGroupAddition
  { _iAMUserToGroupAdditionGroupName = groupNamearg
  , _iAMUserToGroupAdditionUsers = usersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-groupname
iamutgaGroupName :: Lens' IAMUserToGroupAddition (Val Text)
iamutgaGroupName = lens _iAMUserToGroupAdditionGroupName (\s a -> s { _iAMUserToGroupAdditionGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-users
iamutgaUsers :: Lens' IAMUserToGroupAddition (ValList Text)
iamutgaUsers = lens _iAMUserToGroupAdditionUsers (\s a -> s { _iAMUserToGroupAdditionUsers = a })
