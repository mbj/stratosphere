module Stratosphere.CloudFormation.Publisher (
        Publisher(..), mkPublisher
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Publisher
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-publisher.html>
    Publisher {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-publisher.html#cfn-cloudformation-publisher-accepttermsandconditions>
               acceptTermsAndConditions :: (Value Prelude.Bool),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-publisher.html#cfn-cloudformation-publisher-connectionarn>
               connectionArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublisher :: Value Prelude.Bool -> Publisher
mkPublisher acceptTermsAndConditions
  = Publisher
      {haddock_workaround_ = (),
       acceptTermsAndConditions = acceptTermsAndConditions,
       connectionArn = Prelude.Nothing}
instance ToResourceProperties Publisher where
  toResourceProperties Publisher {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::Publisher",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AcceptTermsAndConditions" JSON..= acceptTermsAndConditions]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionArn" Prelude.<$> connectionArn]))}
instance JSON.ToJSON Publisher where
  toJSON Publisher {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AcceptTermsAndConditions" JSON..= acceptTermsAndConditions]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionArn" Prelude.<$> connectionArn])))
instance Property "AcceptTermsAndConditions" Publisher where
  type PropertyType "AcceptTermsAndConditions" Publisher = Value Prelude.Bool
  set newValue Publisher {..}
    = Publisher {acceptTermsAndConditions = newValue, ..}
instance Property "ConnectionArn" Publisher where
  type PropertyType "ConnectionArn" Publisher = Value Prelude.Text
  set newValue Publisher {..}
    = Publisher {connectionArn = Prelude.pure newValue, ..}