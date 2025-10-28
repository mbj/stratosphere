module Stratosphere.Bedrock.Agent.ParameterDetailProperty (
        ParameterDetailProperty(..), mkParameterDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-parameterdetail.html>
    ParameterDetailProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-parameterdetail.html#cfn-bedrock-agent-parameterdetail-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-parameterdetail.html#cfn-bedrock-agent-parameterdetail-required>
                             required :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-parameterdetail.html#cfn-bedrock-agent-parameterdetail-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterDetailProperty ::
  Value Prelude.Text -> ParameterDetailProperty
mkParameterDetailProperty type'
  = ParameterDetailProperty
      {haddock_workaround_ = (), type' = type',
       description = Prelude.Nothing, required = Prelude.Nothing}
instance ToResourceProperties ParameterDetailProperty where
  toResourceProperties ParameterDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.ParameterDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Required" Prelude.<$> required]))}
instance JSON.ToJSON ParameterDetailProperty where
  toJSON ParameterDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Required" Prelude.<$> required])))
instance Property "Description" ParameterDetailProperty where
  type PropertyType "Description" ParameterDetailProperty = Value Prelude.Text
  set newValue ParameterDetailProperty {..}
    = ParameterDetailProperty {description = Prelude.pure newValue, ..}
instance Property "Required" ParameterDetailProperty where
  type PropertyType "Required" ParameterDetailProperty = Value Prelude.Bool
  set newValue ParameterDetailProperty {..}
    = ParameterDetailProperty {required = Prelude.pure newValue, ..}
instance Property "Type" ParameterDetailProperty where
  type PropertyType "Type" ParameterDetailProperty = Value Prelude.Text
  set newValue ParameterDetailProperty {..}
    = ParameterDetailProperty {type' = newValue, ..}