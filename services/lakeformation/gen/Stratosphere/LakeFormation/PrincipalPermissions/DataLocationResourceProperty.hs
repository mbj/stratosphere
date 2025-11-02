module Stratosphere.LakeFormation.PrincipalPermissions.DataLocationResourceProperty (
        DataLocationResourceProperty(..), mkDataLocationResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLocationResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datalocationresource.html>
    DataLocationResourceProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datalocationresource.html#cfn-lakeformation-principalpermissions-datalocationresource-catalogid>
                                  catalogId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datalocationresource.html#cfn-lakeformation-principalpermissions-datalocationresource-resourcearn>
                                  resourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLocationResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataLocationResourceProperty
mkDataLocationResourceProperty catalogId resourceArn
  = DataLocationResourceProperty
      {haddock_workaround_ = (), catalogId = catalogId,
       resourceArn = resourceArn}
instance ToResourceProperties DataLocationResourceProperty where
  toResourceProperties DataLocationResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.DataLocationResource",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "ResourceArn" JSON..= resourceArn]}
instance JSON.ToJSON DataLocationResourceProperty where
  toJSON DataLocationResourceProperty {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId, "ResourceArn" JSON..= resourceArn]
instance Property "CatalogId" DataLocationResourceProperty where
  type PropertyType "CatalogId" DataLocationResourceProperty = Value Prelude.Text
  set newValue DataLocationResourceProperty {..}
    = DataLocationResourceProperty {catalogId = newValue, ..}
instance Property "ResourceArn" DataLocationResourceProperty where
  type PropertyType "ResourceArn" DataLocationResourceProperty = Value Prelude.Text
  set newValue DataLocationResourceProperty {..}
    = DataLocationResourceProperty {resourceArn = newValue, ..}