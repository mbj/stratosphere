module Stratosphere.IAM.AccessKey (
        AccessKey(..), mkAccessKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessKey
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html>
    AccessKey {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-serial>
               serial :: (Prelude.Maybe (Value Prelude.Integer)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-status>
               status :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-username>
               userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessKey :: Value Prelude.Text -> AccessKey
mkAccessKey userName
  = AccessKey
      {userName = userName, serial = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties AccessKey where
  toResourceProperties AccessKey {..}
    = ResourceProperties
        {awsType = "AWS::IAM::AccessKey", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "Serial" Prelude.<$> serial,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON AccessKey where
  toJSON AccessKey {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "Serial" Prelude.<$> serial,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Serial" AccessKey where
  type PropertyType "Serial" AccessKey = Value Prelude.Integer
  set newValue AccessKey {..}
    = AccessKey {serial = Prelude.pure newValue, ..}
instance Property "Status" AccessKey where
  type PropertyType "Status" AccessKey = Value Prelude.Text
  set newValue AccessKey {..}
    = AccessKey {status = Prelude.pure newValue, ..}
instance Property "UserName" AccessKey where
  type PropertyType "UserName" AccessKey = Value Prelude.Text
  set newValue AccessKey {..} = AccessKey {userName = newValue, ..}