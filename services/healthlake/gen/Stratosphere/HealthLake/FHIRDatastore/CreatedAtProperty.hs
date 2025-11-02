module Stratosphere.HealthLake.FHIRDatastore.CreatedAtProperty (
        CreatedAtProperty(..), mkCreatedAtProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreatedAtProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-createdat.html>
    CreatedAtProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-createdat.html#cfn-healthlake-fhirdatastore-createdat-nanos>
                       nanos :: (Value Prelude.Integer),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-createdat.html#cfn-healthlake-fhirdatastore-createdat-seconds>
                       seconds :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreatedAtProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> CreatedAtProperty
mkCreatedAtProperty nanos seconds
  = CreatedAtProperty
      {haddock_workaround_ = (), nanos = nanos, seconds = seconds}
instance ToResourceProperties CreatedAtProperty where
  toResourceProperties CreatedAtProperty {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore.CreatedAt",
         supportsTags = Prelude.False,
         properties = ["Nanos" JSON..= nanos, "Seconds" JSON..= seconds]}
instance JSON.ToJSON CreatedAtProperty where
  toJSON CreatedAtProperty {..}
    = JSON.object ["Nanos" JSON..= nanos, "Seconds" JSON..= seconds]
instance Property "Nanos" CreatedAtProperty where
  type PropertyType "Nanos" CreatedAtProperty = Value Prelude.Integer
  set newValue CreatedAtProperty {..}
    = CreatedAtProperty {nanos = newValue, ..}
instance Property "Seconds" CreatedAtProperty where
  type PropertyType "Seconds" CreatedAtProperty = Value Prelude.Text
  set newValue CreatedAtProperty {..}
    = CreatedAtProperty {seconds = newValue, ..}