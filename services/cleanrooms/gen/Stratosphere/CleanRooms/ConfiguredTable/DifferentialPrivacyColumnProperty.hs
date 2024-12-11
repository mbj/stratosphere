module Stratosphere.CleanRooms.ConfiguredTable.DifferentialPrivacyColumnProperty (
        DifferentialPrivacyColumnProperty(..),
        mkDifferentialPrivacyColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DifferentialPrivacyColumnProperty
  = DifferentialPrivacyColumnProperty {name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDifferentialPrivacyColumnProperty ::
  Value Prelude.Text -> DifferentialPrivacyColumnProperty
mkDifferentialPrivacyColumnProperty name
  = DifferentialPrivacyColumnProperty {name = name}
instance ToResourceProperties DifferentialPrivacyColumnProperty where
  toResourceProperties DifferentialPrivacyColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.DifferentialPrivacyColumn",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON DifferentialPrivacyColumnProperty where
  toJSON DifferentialPrivacyColumnProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" DifferentialPrivacyColumnProperty where
  type PropertyType "Name" DifferentialPrivacyColumnProperty = Value Prelude.Text
  set newValue DifferentialPrivacyColumnProperty {}
    = DifferentialPrivacyColumnProperty {name = newValue, ..}