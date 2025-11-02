module Stratosphere.CloudFormation.Stack (
        Stack(..), mkStack
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stack
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html>
    Stack {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-notificationarns>
           notificationARNs :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-parameters>
           parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-templateurl>
           templateURL :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-timeoutinminutes>
           timeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStack :: Value Prelude.Text -> Stack
mkStack templateURL
  = Stack
      {haddock_workaround_ = (), templateURL = templateURL,
       notificationARNs = Prelude.Nothing, parameters = Prelude.Nothing,
       tags = Prelude.Nothing, timeoutInMinutes = Prelude.Nothing}
instance ToResourceProperties Stack where
  toResourceProperties Stack {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::Stack",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TemplateURL" JSON..= templateURL]
                           (Prelude.catMaybes
                              [(JSON..=) "NotificationARNs" Prelude.<$> notificationARNs,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TimeoutInMinutes" Prelude.<$> timeoutInMinutes]))}
instance JSON.ToJSON Stack where
  toJSON Stack {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TemplateURL" JSON..= templateURL]
              (Prelude.catMaybes
                 [(JSON..=) "NotificationARNs" Prelude.<$> notificationARNs,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TimeoutInMinutes" Prelude.<$> timeoutInMinutes])))
instance Property "NotificationARNs" Stack where
  type PropertyType "NotificationARNs" Stack = ValueList Prelude.Text
  set newValue Stack {..}
    = Stack {notificationARNs = Prelude.pure newValue, ..}
instance Property "Parameters" Stack where
  type PropertyType "Parameters" Stack = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Stack {..}
    = Stack {parameters = Prelude.pure newValue, ..}
instance Property "Tags" Stack where
  type PropertyType "Tags" Stack = [Tag]
  set newValue Stack {..} = Stack {tags = Prelude.pure newValue, ..}
instance Property "TemplateURL" Stack where
  type PropertyType "TemplateURL" Stack = Value Prelude.Text
  set newValue Stack {..} = Stack {templateURL = newValue, ..}
instance Property "TimeoutInMinutes" Stack where
  type PropertyType "TimeoutInMinutes" Stack = Value Prelude.Integer
  set newValue Stack {..}
    = Stack {timeoutInMinutes = Prelude.pure newValue, ..}