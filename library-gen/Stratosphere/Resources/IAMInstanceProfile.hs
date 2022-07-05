{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html

module Stratosphere.Resources.IAMInstanceProfile where

import Stratosphere.ResourceImports


-- | Full data type definition for IAMInstanceProfile. See
-- 'iamInstanceProfile' for a more convenient constructor.
data IAMInstanceProfile =
  IAMInstanceProfile
  { _iAMInstanceProfileInstanceProfileName :: Maybe (Val Text)
  , _iAMInstanceProfilePath :: Maybe (Val Text)
  , _iAMInstanceProfileRoles :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties IAMInstanceProfile where
  toResourceProperties IAMInstanceProfile{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IAM::InstanceProfile"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InstanceProfileName",) . toJSON) _iAMInstanceProfileInstanceProfileName
        , fmap (("Path",) . toJSON) _iAMInstanceProfilePath
        , (Just . ("Roles",) . toJSON) _iAMInstanceProfileRoles
        ]
    }

-- | Constructor for 'IAMInstanceProfile' containing required fields as
-- arguments.
iamInstanceProfile
  :: ValList Text -- ^ 'iamipRoles'
  -> IAMInstanceProfile
iamInstanceProfile rolesarg =
  IAMInstanceProfile
  { _iAMInstanceProfileInstanceProfileName = Nothing
  , _iAMInstanceProfilePath = Nothing
  , _iAMInstanceProfileRoles = rolesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-instanceprofilename
iamipInstanceProfileName :: Lens' IAMInstanceProfile (Maybe (Val Text))
iamipInstanceProfileName = lens _iAMInstanceProfileInstanceProfileName (\s a -> s { _iAMInstanceProfileInstanceProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-path
iamipPath :: Lens' IAMInstanceProfile (Maybe (Val Text))
iamipPath = lens _iAMInstanceProfilePath (\s a -> s { _iAMInstanceProfilePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-roles
iamipRoles :: Lens' IAMInstanceProfile (ValList Text)
iamipRoles = lens _iAMInstanceProfileRoles (\s a -> s { _iAMInstanceProfileRoles = a })
