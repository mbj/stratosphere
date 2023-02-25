module Stratosphere.LakeFormation.Permissions.TableWildcardProperty (
        TableWildcardProperty(..), mkTableWildcardProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data TableWildcardProperty = TableWildcardProperty {}
mkTableWildcardProperty :: TableWildcardProperty
mkTableWildcardProperty = TableWildcardProperty {}
instance ToResourceProperties TableWildcardProperty where
  toResourceProperties TableWildcardProperty {}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.TableWildcard",
         properties = []}
instance JSON.ToJSON TableWildcardProperty where
  toJSON TableWildcardProperty {} = JSON.object []