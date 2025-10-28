module Stratosphere.LakeFormation.Permissions.TableWildcardProperty (
        TableWildcardProperty(..), mkTableWildcardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableWildcardProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewildcard.html>
    TableWildcardProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableWildcardProperty :: TableWildcardProperty
mkTableWildcardProperty
  = TableWildcardProperty {haddock_workaround_ = ()}
instance ToResourceProperties TableWildcardProperty where
  toResourceProperties TableWildcardProperty {}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.TableWildcard",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON TableWildcardProperty where
  toJSON TableWildcardProperty {} = JSON.object []