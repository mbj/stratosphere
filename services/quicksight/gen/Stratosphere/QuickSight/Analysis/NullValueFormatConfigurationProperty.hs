module Stratosphere.QuickSight.Analysis.NullValueFormatConfigurationProperty (
        NullValueFormatConfigurationProperty(..),
        mkNullValueFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NullValueFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-nullvalueformatconfiguration.html>
    NullValueFormatConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-nullvalueformatconfiguration.html#cfn-quicksight-analysis-nullvalueformatconfiguration-nullstring>
                                          nullString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNullValueFormatConfigurationProperty ::
  Value Prelude.Text -> NullValueFormatConfigurationProperty
mkNullValueFormatConfigurationProperty nullString
  = NullValueFormatConfigurationProperty
      {haddock_workaround_ = (), nullString = nullString}
instance ToResourceProperties NullValueFormatConfigurationProperty where
  toResourceProperties NullValueFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NullValueFormatConfiguration",
         supportsTags = Prelude.False,
         properties = ["NullString" JSON..= nullString]}
instance JSON.ToJSON NullValueFormatConfigurationProperty where
  toJSON NullValueFormatConfigurationProperty {..}
    = JSON.object ["NullString" JSON..= nullString]
instance Property "NullString" NullValueFormatConfigurationProperty where
  type PropertyType "NullString" NullValueFormatConfigurationProperty = Value Prelude.Text
  set newValue NullValueFormatConfigurationProperty {..}
    = NullValueFormatConfigurationProperty {nullString = newValue, ..}