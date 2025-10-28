module Stratosphere.LakeFormation.PrincipalPermissions.DataLakePrincipalProperty (
        DataLakePrincipalProperty(..), mkDataLakePrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLakePrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datalakeprincipal.html>
    DataLakePrincipalProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datalakeprincipal.html#cfn-lakeformation-principalpermissions-datalakeprincipal-datalakeprincipalidentifier>
                               dataLakePrincipalIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLakePrincipalProperty :: DataLakePrincipalProperty
mkDataLakePrincipalProperty
  = DataLakePrincipalProperty
      {haddock_workaround_ = (),
       dataLakePrincipalIdentifier = Prelude.Nothing}
instance ToResourceProperties DataLakePrincipalProperty where
  toResourceProperties DataLakePrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.DataLakePrincipal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLakePrincipalIdentifier"
                              Prelude.<$> dataLakePrincipalIdentifier])}
instance JSON.ToJSON DataLakePrincipalProperty where
  toJSON DataLakePrincipalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLakePrincipalIdentifier"
                 Prelude.<$> dataLakePrincipalIdentifier]))
instance Property "DataLakePrincipalIdentifier" DataLakePrincipalProperty where
  type PropertyType "DataLakePrincipalIdentifier" DataLakePrincipalProperty = Value Prelude.Text
  set newValue DataLakePrincipalProperty {..}
    = DataLakePrincipalProperty
        {dataLakePrincipalIdentifier = Prelude.pure newValue, ..}