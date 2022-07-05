{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html

module Stratosphere.Resources.LakeFormationDataLakeSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LakeFormationDataLakeSettingsDataLakePrincipal

-- | Full data type definition for LakeFormationDataLakeSettings. See
-- 'lakeFormationDataLakeSettings' for a more convenient constructor.
data LakeFormationDataLakeSettings =
  LakeFormationDataLakeSettings
  { _lakeFormationDataLakeSettingsAdmins :: Maybe [LakeFormationDataLakeSettingsDataLakePrincipal]
  } deriving (Show, Eq)

instance ToResourceProperties LakeFormationDataLakeSettings where
  toResourceProperties LakeFormationDataLakeSettings{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::LakeFormation::DataLakeSettings"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Admins",) . toJSON) _lakeFormationDataLakeSettingsAdmins
        ]
    }

-- | Constructor for 'LakeFormationDataLakeSettings' containing required
-- fields as arguments.
lakeFormationDataLakeSettings
  :: LakeFormationDataLakeSettings
lakeFormationDataLakeSettings  =
  LakeFormationDataLakeSettings
  { _lakeFormationDataLakeSettingsAdmins = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-admins
lfdlsAdmins :: Lens' LakeFormationDataLakeSettings (Maybe [LakeFormationDataLakeSettingsDataLakePrincipal])
lfdlsAdmins = lens _lakeFormationDataLakeSettingsAdmins (\s a -> s { _lakeFormationDataLakeSettingsAdmins = a })
