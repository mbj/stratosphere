{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html

module Stratosphere.Resources.LakeFormationResource where

import Stratosphere.ResourceImports


-- | Full data type definition for LakeFormationResource. See
-- 'lakeFormationResource' for a more convenient constructor.
data LakeFormationResource =
  LakeFormationResource
  { _lakeFormationResourceResourceArn :: Val Text
  , _lakeFormationResourceRoleArn :: Maybe (Val Text)
  , _lakeFormationResourceUseServiceLinkedRole :: Val Bool
  } deriving (Show, Eq)

instance ToResourceProperties LakeFormationResource where
  toResourceProperties LakeFormationResource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::LakeFormation::Resource"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ResourceArn",) . toJSON) _lakeFormationResourceResourceArn
        , fmap (("RoleArn",) . toJSON) _lakeFormationResourceRoleArn
        , (Just . ("UseServiceLinkedRole",) . toJSON) _lakeFormationResourceUseServiceLinkedRole
        ]
    }

-- | Constructor for 'LakeFormationResource' containing required fields as
-- arguments.
lakeFormationResource
  :: Val Text -- ^ 'lfrResourceArn'
  -> Val Bool -- ^ 'lfrUseServiceLinkedRole'
  -> LakeFormationResource
lakeFormationResource resourceArnarg useServiceLinkedRolearg =
  LakeFormationResource
  { _lakeFormationResourceResourceArn = resourceArnarg
  , _lakeFormationResourceRoleArn = Nothing
  , _lakeFormationResourceUseServiceLinkedRole = useServiceLinkedRolearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-resourcearn
lfrResourceArn :: Lens' LakeFormationResource (Val Text)
lfrResourceArn = lens _lakeFormationResourceResourceArn (\s a -> s { _lakeFormationResourceResourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-rolearn
lfrRoleArn :: Lens' LakeFormationResource (Maybe (Val Text))
lfrRoleArn = lens _lakeFormationResourceRoleArn (\s a -> s { _lakeFormationResourceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-useservicelinkedrole
lfrUseServiceLinkedRole :: Lens' LakeFormationResource (Val Bool)
lfrUseServiceLinkedRole = lens _lakeFormationResourceUseServiceLinkedRole (\s a -> s { _lakeFormationResourceUseServiceLinkedRole = a })
