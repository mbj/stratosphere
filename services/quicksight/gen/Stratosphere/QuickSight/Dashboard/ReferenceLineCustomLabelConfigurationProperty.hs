module Stratosphere.QuickSight.Dashboard.ReferenceLineCustomLabelConfigurationProperty (
        ReferenceLineCustomLabelConfigurationProperty(..),
        mkReferenceLineCustomLabelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineCustomLabelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-referencelinecustomlabelconfiguration.html>
    ReferenceLineCustomLabelConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-referencelinecustomlabelconfiguration.html#cfn-quicksight-dashboard-referencelinecustomlabelconfiguration-customlabel>
                                                   customLabel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineCustomLabelConfigurationProperty ::
  Value Prelude.Text -> ReferenceLineCustomLabelConfigurationProperty
mkReferenceLineCustomLabelConfigurationProperty customLabel
  = ReferenceLineCustomLabelConfigurationProperty
      {haddock_workaround_ = (), customLabel = customLabel}
instance ToResourceProperties ReferenceLineCustomLabelConfigurationProperty where
  toResourceProperties
    ReferenceLineCustomLabelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ReferenceLineCustomLabelConfiguration",
         supportsTags = Prelude.False,
         properties = ["CustomLabel" JSON..= customLabel]}
instance JSON.ToJSON ReferenceLineCustomLabelConfigurationProperty where
  toJSON ReferenceLineCustomLabelConfigurationProperty {..}
    = JSON.object ["CustomLabel" JSON..= customLabel]
instance Property "CustomLabel" ReferenceLineCustomLabelConfigurationProperty where
  type PropertyType "CustomLabel" ReferenceLineCustomLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineCustomLabelConfigurationProperty {..}
    = ReferenceLineCustomLabelConfigurationProperty
        {customLabel = newValue, ..}