module Stratosphere.IoTSiteWise.AccessPolicy.IamRoleProperty (
        IamRoleProperty(..), mkIamRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamRoleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-iamrole.html>
    IamRoleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-iamrole.html#cfn-iotsitewise-accesspolicy-iamrole-arn>
                     arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamRoleProperty :: IamRoleProperty
mkIamRoleProperty = IamRoleProperty {arn = Prelude.Nothing}
instance ToResourceProperties IamRoleProperty where
  toResourceProperties IamRoleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.IamRole",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "arn" Prelude.<$> arn])}
instance JSON.ToJSON IamRoleProperty where
  toJSON IamRoleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "arn" Prelude.<$> arn]))
instance Property "arn" IamRoleProperty where
  type PropertyType "arn" IamRoleProperty = Value Prelude.Text
  set newValue IamRoleProperty {}
    = IamRoleProperty {arn = Prelude.pure newValue, ..}