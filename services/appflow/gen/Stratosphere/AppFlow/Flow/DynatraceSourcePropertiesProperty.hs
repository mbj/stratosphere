module Stratosphere.AppFlow.Flow.DynatraceSourcePropertiesProperty (
        DynatraceSourcePropertiesProperty(..),
        mkDynatraceSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynatraceSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-dynatracesourceproperties.html>
    DynatraceSourcePropertiesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-dynatracesourceproperties.html#cfn-appflow-flow-dynatracesourceproperties-object>
                                       object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynatraceSourcePropertiesProperty ::
  Value Prelude.Text -> DynatraceSourcePropertiesProperty
mkDynatraceSourcePropertiesProperty object
  = DynatraceSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties DynatraceSourcePropertiesProperty where
  toResourceProperties DynatraceSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.DynatraceSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON DynatraceSourcePropertiesProperty where
  toJSON DynatraceSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" DynatraceSourcePropertiesProperty where
  type PropertyType "Object" DynatraceSourcePropertiesProperty = Value Prelude.Text
  set newValue DynatraceSourcePropertiesProperty {..}
    = DynatraceSourcePropertiesProperty {object = newValue, ..}