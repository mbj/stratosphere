module Stratosphere.QuickSight.Template.DecimalPlacesConfigurationProperty (
        DecimalPlacesConfigurationProperty(..),
        mkDecimalPlacesConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalPlacesConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimalplacesconfiguration.html>
    DecimalPlacesConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimalplacesconfiguration.html#cfn-quicksight-template-decimalplacesconfiguration-decimalplaces>
                                        decimalPlaces :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalPlacesConfigurationProperty ::
  Value Prelude.Double -> DecimalPlacesConfigurationProperty
mkDecimalPlacesConfigurationProperty decimalPlaces
  = DecimalPlacesConfigurationProperty
      {haddock_workaround_ = (), decimalPlaces = decimalPlaces}
instance ToResourceProperties DecimalPlacesConfigurationProperty where
  toResourceProperties DecimalPlacesConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DecimalPlacesConfiguration",
         supportsTags = Prelude.False,
         properties = ["DecimalPlaces" JSON..= decimalPlaces]}
instance JSON.ToJSON DecimalPlacesConfigurationProperty where
  toJSON DecimalPlacesConfigurationProperty {..}
    = JSON.object ["DecimalPlaces" JSON..= decimalPlaces]
instance Property "DecimalPlaces" DecimalPlacesConfigurationProperty where
  type PropertyType "DecimalPlaces" DecimalPlacesConfigurationProperty = Value Prelude.Double
  set newValue DecimalPlacesConfigurationProperty {..}
    = DecimalPlacesConfigurationProperty {decimalPlaces = newValue, ..}