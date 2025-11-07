module Stratosphere.QuickSight.Template.NegativeValueConfigurationProperty (
        NegativeValueConfigurationProperty(..),
        mkNegativeValueConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NegativeValueConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-negativevalueconfiguration.html>
    NegativeValueConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-negativevalueconfiguration.html#cfn-quicksight-template-negativevalueconfiguration-displaymode>
                                        displayMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNegativeValueConfigurationProperty ::
  Value Prelude.Text -> NegativeValueConfigurationProperty
mkNegativeValueConfigurationProperty displayMode
  = NegativeValueConfigurationProperty
      {haddock_workaround_ = (), displayMode = displayMode}
instance ToResourceProperties NegativeValueConfigurationProperty where
  toResourceProperties NegativeValueConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NegativeValueConfiguration",
         supportsTags = Prelude.False,
         properties = ["DisplayMode" JSON..= displayMode]}
instance JSON.ToJSON NegativeValueConfigurationProperty where
  toJSON NegativeValueConfigurationProperty {..}
    = JSON.object ["DisplayMode" JSON..= displayMode]
instance Property "DisplayMode" NegativeValueConfigurationProperty where
  type PropertyType "DisplayMode" NegativeValueConfigurationProperty = Value Prelude.Text
  set newValue NegativeValueConfigurationProperty {..}
    = NegativeValueConfigurationProperty {displayMode = newValue, ..}