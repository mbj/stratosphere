
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-datalakeprincipal.html

module Stratosphere.ResourceProperties.LakeFormationDataLakeSettingsDataLakePrincipal where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- LakeFormationDataLakeSettingsDataLakePrincipal. See
-- 'lakeFormationDataLakeSettingsDataLakePrincipal' for a more convenient
-- constructor.
data LakeFormationDataLakeSettingsDataLakePrincipal =
  LakeFormationDataLakeSettingsDataLakePrincipal
  { _lakeFormationDataLakeSettingsDataLakePrincipalDataLakePrincipalIdentifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationDataLakeSettingsDataLakePrincipal where
  toJSON LakeFormationDataLakeSettingsDataLakePrincipal{..} =
    object $
    catMaybes
    [ fmap (("DataLakePrincipalIdentifier",) . toJSON) _lakeFormationDataLakeSettingsDataLakePrincipalDataLakePrincipalIdentifier
    ]

-- | Constructor for 'LakeFormationDataLakeSettingsDataLakePrincipal'
-- containing required fields as arguments.
lakeFormationDataLakeSettingsDataLakePrincipal
  :: LakeFormationDataLakeSettingsDataLakePrincipal
lakeFormationDataLakeSettingsDataLakePrincipal  =
  LakeFormationDataLakeSettingsDataLakePrincipal
  { _lakeFormationDataLakeSettingsDataLakePrincipalDataLakePrincipalIdentifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-datalakeprincipal.html#cfn-lakeformation-datalakesettings-datalakeprincipal-datalakeprincipalidentifier
lfdlsdlpDataLakePrincipalIdentifier :: Lens' LakeFormationDataLakeSettingsDataLakePrincipal (Maybe (Val Text))
lfdlsdlpDataLakePrincipalIdentifier = lens _lakeFormationDataLakeSettingsDataLakePrincipalDataLakePrincipalIdentifier (\s a -> s { _lakeFormationDataLakeSettingsDataLakePrincipalDataLakePrincipalIdentifier = a })
