module Stratosphere.IAM.ServiceLinkedRole (
        ServiceLinkedRole(..), mkServiceLinkedRole
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceLinkedRole
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html>
    ServiceLinkedRole {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-awsservicename>
                       aWSServiceName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-customsuffix>
                       customSuffix :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-description>
                       description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceLinkedRole :: ServiceLinkedRole
mkServiceLinkedRole
  = ServiceLinkedRole
      {haddock_workaround_ = (), aWSServiceName = Prelude.Nothing,
       customSuffix = Prelude.Nothing, description = Prelude.Nothing}
instance ToResourceProperties ServiceLinkedRole where
  toResourceProperties ServiceLinkedRole {..}
    = ResourceProperties
        {awsType = "AWS::IAM::ServiceLinkedRole",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AWSServiceName" Prelude.<$> aWSServiceName,
                            (JSON..=) "CustomSuffix" Prelude.<$> customSuffix,
                            (JSON..=) "Description" Prelude.<$> description])}
instance JSON.ToJSON ServiceLinkedRole where
  toJSON ServiceLinkedRole {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AWSServiceName" Prelude.<$> aWSServiceName,
               (JSON..=) "CustomSuffix" Prelude.<$> customSuffix,
               (JSON..=) "Description" Prelude.<$> description]))
instance Property "AWSServiceName" ServiceLinkedRole where
  type PropertyType "AWSServiceName" ServiceLinkedRole = Value Prelude.Text
  set newValue ServiceLinkedRole {..}
    = ServiceLinkedRole {aWSServiceName = Prelude.pure newValue, ..}
instance Property "CustomSuffix" ServiceLinkedRole where
  type PropertyType "CustomSuffix" ServiceLinkedRole = Value Prelude.Text
  set newValue ServiceLinkedRole {..}
    = ServiceLinkedRole {customSuffix = Prelude.pure newValue, ..}
instance Property "Description" ServiceLinkedRole where
  type PropertyType "Description" ServiceLinkedRole = Value Prelude.Text
  set newValue ServiceLinkedRole {..}
    = ServiceLinkedRole {description = Prelude.pure newValue, ..}