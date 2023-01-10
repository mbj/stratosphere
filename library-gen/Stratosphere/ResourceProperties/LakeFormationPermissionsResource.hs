
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsResource where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LakeFormationPermissionsDataLocationResource
import Stratosphere.ResourceProperties.LakeFormationPermissionsDatabaseResource
import Stratosphere.ResourceProperties.LakeFormationPermissionsTableResource
import Stratosphere.ResourceProperties.LakeFormationPermissionsTableWithColumnsResource

-- | Full data type definition for LakeFormationPermissionsResource. See
-- 'lakeFormationPermissionsResource' for a more convenient constructor.
data LakeFormationPermissionsResource =
  LakeFormationPermissionsResource
  { _lakeFormationPermissionsResourceDataLocationResource :: Maybe LakeFormationPermissionsDataLocationResource
  , _lakeFormationPermissionsResourceDatabaseResource :: Maybe LakeFormationPermissionsDatabaseResource
  , _lakeFormationPermissionsResourceTableResource :: Maybe LakeFormationPermissionsTableResource
  , _lakeFormationPermissionsResourceTableWithColumnsResource :: Maybe LakeFormationPermissionsTableWithColumnsResource
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsResource where
  toJSON LakeFormationPermissionsResource{..} =
    object $
    catMaybes
    [ fmap (("DataLocationResource",) . toJSON) _lakeFormationPermissionsResourceDataLocationResource
    , fmap (("DatabaseResource",) . toJSON) _lakeFormationPermissionsResourceDatabaseResource
    , fmap (("TableResource",) . toJSON) _lakeFormationPermissionsResourceTableResource
    , fmap (("TableWithColumnsResource",) . toJSON) _lakeFormationPermissionsResourceTableWithColumnsResource
    ]

-- | Constructor for 'LakeFormationPermissionsResource' containing required
-- fields as arguments.
lakeFormationPermissionsResource
  :: LakeFormationPermissionsResource
lakeFormationPermissionsResource  =
  LakeFormationPermissionsResource
  { _lakeFormationPermissionsResourceDataLocationResource = Nothing
  , _lakeFormationPermissionsResourceDatabaseResource = Nothing
  , _lakeFormationPermissionsResourceTableResource = Nothing
  , _lakeFormationPermissionsResourceTableWithColumnsResource = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-datalocationresource
lfprDataLocationResource :: Lens' LakeFormationPermissionsResource (Maybe LakeFormationPermissionsDataLocationResource)
lfprDataLocationResource = lens _lakeFormationPermissionsResourceDataLocationResource (\s a -> s { _lakeFormationPermissionsResourceDataLocationResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-databaseresource
lfprDatabaseResource :: Lens' LakeFormationPermissionsResource (Maybe LakeFormationPermissionsDatabaseResource)
lfprDatabaseResource = lens _lakeFormationPermissionsResourceDatabaseResource (\s a -> s { _lakeFormationPermissionsResourceDatabaseResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tableresource
lfprTableResource :: Lens' LakeFormationPermissionsResource (Maybe LakeFormationPermissionsTableResource)
lfprTableResource = lens _lakeFormationPermissionsResourceTableResource (\s a -> s { _lakeFormationPermissionsResourceTableResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tablewithcolumnsresource
lfprTableWithColumnsResource :: Lens' LakeFormationPermissionsResource (Maybe LakeFormationPermissionsTableWithColumnsResource)
lfprTableWithColumnsResource = lens _lakeFormationPermissionsResourceTableWithColumnsResource (\s a -> s { _lakeFormationPermissionsResourceTableWithColumnsResource = a })
