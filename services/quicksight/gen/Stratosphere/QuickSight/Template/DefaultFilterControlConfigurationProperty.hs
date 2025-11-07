module Stratosphere.QuickSight.Template.DefaultFilterControlConfigurationProperty (
        module Exports, DefaultFilterControlConfigurationProperty(..),
        mkDefaultFilterControlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultFilterControlOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultFilterControlConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontrolconfiguration.html>
    DefaultFilterControlConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontrolconfiguration.html#cfn-quicksight-template-defaultfiltercontrolconfiguration-controloptions>
                                               controlOptions :: DefaultFilterControlOptionsProperty,
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfiltercontrolconfiguration.html#cfn-quicksight-template-defaultfiltercontrolconfiguration-title>
                                               title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultFilterControlConfigurationProperty ::
  DefaultFilterControlOptionsProperty
  -> Value Prelude.Text -> DefaultFilterControlConfigurationProperty
mkDefaultFilterControlConfigurationProperty controlOptions title
  = DefaultFilterControlConfigurationProperty
      {haddock_workaround_ = (), controlOptions = controlOptions,
       title = title}
instance ToResourceProperties DefaultFilterControlConfigurationProperty where
  toResourceProperties DefaultFilterControlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DefaultFilterControlConfiguration",
         supportsTags = Prelude.False,
         properties = ["ControlOptions" JSON..= controlOptions,
                       "Title" JSON..= title]}
instance JSON.ToJSON DefaultFilterControlConfigurationProperty where
  toJSON DefaultFilterControlConfigurationProperty {..}
    = JSON.object
        ["ControlOptions" JSON..= controlOptions, "Title" JSON..= title]
instance Property "ControlOptions" DefaultFilterControlConfigurationProperty where
  type PropertyType "ControlOptions" DefaultFilterControlConfigurationProperty = DefaultFilterControlOptionsProperty
  set newValue DefaultFilterControlConfigurationProperty {..}
    = DefaultFilterControlConfigurationProperty
        {controlOptions = newValue, ..}
instance Property "Title" DefaultFilterControlConfigurationProperty where
  type PropertyType "Title" DefaultFilterControlConfigurationProperty = Value Prelude.Text
  set newValue DefaultFilterControlConfigurationProperty {..}
    = DefaultFilterControlConfigurationProperty {title = newValue, ..}