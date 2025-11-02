module Stratosphere.SSMIncidents.ResponsePlan.DynamicSsmParameterValueProperty (
        DynamicSsmParameterValueProperty(..),
        mkDynamicSsmParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamicSsmParameterValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-dynamicssmparametervalue.html>
    DynamicSsmParameterValueProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-dynamicssmparametervalue.html#cfn-ssmincidents-responseplan-dynamicssmparametervalue-variable>
                                      variable :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamicSsmParameterValueProperty ::
  DynamicSsmParameterValueProperty
mkDynamicSsmParameterValueProperty
  = DynamicSsmParameterValueProperty
      {haddock_workaround_ = (), variable = Prelude.Nothing}
instance ToResourceProperties DynamicSsmParameterValueProperty where
  toResourceProperties DynamicSsmParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.DynamicSsmParameterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Variable" Prelude.<$> variable])}
instance JSON.ToJSON DynamicSsmParameterValueProperty where
  toJSON DynamicSsmParameterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Variable" Prelude.<$> variable]))
instance Property "Variable" DynamicSsmParameterValueProperty where
  type PropertyType "Variable" DynamicSsmParameterValueProperty = Value Prelude.Text
  set newValue DynamicSsmParameterValueProperty {..}
    = DynamicSsmParameterValueProperty
        {variable = Prelude.pure newValue, ..}