module Stratosphere.LakeFormation.DataLakeSettings.DataLakePrincipalProperty (
        DataLakePrincipalProperty(..), mkDataLakePrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLakePrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-datalakeprincipal.html>
    DataLakePrincipalProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-datalakeprincipal.html#cfn-lakeformation-datalakesettings-datalakeprincipal-datalakeprincipalidentifier>
                               dataLakePrincipalIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLakePrincipalProperty ::
  Value Prelude.Text -> DataLakePrincipalProperty
mkDataLakePrincipalProperty dataLakePrincipalIdentifier
  = DataLakePrincipalProperty
      {haddock_workaround_ = (),
       dataLakePrincipalIdentifier = dataLakePrincipalIdentifier}
instance ToResourceProperties DataLakePrincipalProperty where
  toResourceProperties DataLakePrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataLakeSettings.DataLakePrincipal",
         supportsTags = Prelude.False,
         properties = ["DataLakePrincipalIdentifier"
                         JSON..= dataLakePrincipalIdentifier]}
instance JSON.ToJSON DataLakePrincipalProperty where
  toJSON DataLakePrincipalProperty {..}
    = JSON.object
        ["DataLakePrincipalIdentifier" JSON..= dataLakePrincipalIdentifier]
instance Property "DataLakePrincipalIdentifier" DataLakePrincipalProperty where
  type PropertyType "DataLakePrincipalIdentifier" DataLakePrincipalProperty = Value Prelude.Text
  set newValue DataLakePrincipalProperty {..}
    = DataLakePrincipalProperty
        {dataLakePrincipalIdentifier = newValue, ..}