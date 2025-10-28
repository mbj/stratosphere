module Stratosphere.SSM.Parameter (
        Parameter(..), mkParameter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Parameter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html>
    Parameter {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-allowedpattern>
               allowedPattern :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-datatype>
               dataType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-policies>
               policies :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-tier>
               tier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-type>
               type' :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-value>
               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameter ::
  Value Prelude.Text -> Value Prelude.Text -> Parameter
mkParameter type' value
  = Parameter
      {haddock_workaround_ = (), type' = type', value = value,
       allowedPattern = Prelude.Nothing, dataType = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       policies = Prelude.Nothing, tags = Prelude.Nothing,
       tier = Prelude.Nothing}
instance ToResourceProperties Parameter where
  toResourceProperties Parameter {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Parameter", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type', "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedPattern" Prelude.<$> allowedPattern,
                               (JSON..=) "DataType" Prelude.<$> dataType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Policies" Prelude.<$> policies,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Tier" Prelude.<$> tier]))}
instance JSON.ToJSON Parameter where
  toJSON Parameter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type', "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedPattern" Prelude.<$> allowedPattern,
                  (JSON..=) "DataType" Prelude.<$> dataType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Policies" Prelude.<$> policies,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Tier" Prelude.<$> tier])))
instance Property "AllowedPattern" Parameter where
  type PropertyType "AllowedPattern" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {allowedPattern = Prelude.pure newValue, ..}
instance Property "DataType" Parameter where
  type PropertyType "DataType" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {dataType = Prelude.pure newValue, ..}
instance Property "Description" Parameter where
  type PropertyType "Description" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {description = Prelude.pure newValue, ..}
instance Property "Name" Parameter where
  type PropertyType "Name" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {name = Prelude.pure newValue, ..}
instance Property "Policies" Parameter where
  type PropertyType "Policies" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {policies = Prelude.pure newValue, ..}
instance Property "Tags" Parameter where
  type PropertyType "Tags" Parameter = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Parameter {..}
    = Parameter {tags = Prelude.pure newValue, ..}
instance Property "Tier" Parameter where
  type PropertyType "Tier" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {tier = Prelude.pure newValue, ..}
instance Property "Type" Parameter where
  type PropertyType "Type" Parameter = Value Prelude.Text
  set newValue Parameter {..} = Parameter {type' = newValue, ..}
instance Property "Value" Parameter where
  type PropertyType "Value" Parameter = Value Prelude.Text
  set newValue Parameter {..} = Parameter {value = newValue, ..}