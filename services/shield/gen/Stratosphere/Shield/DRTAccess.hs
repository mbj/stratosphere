module Stratosphere.Shield.DRTAccess (
        DRTAccess(..), mkDRTAccess
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DRTAccess
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-shield-drtaccess.html>
    DRTAccess {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-shield-drtaccess.html#cfn-shield-drtaccess-logbucketlist>
               logBucketList :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-shield-drtaccess.html#cfn-shield-drtaccess-rolearn>
               roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDRTAccess :: Value Prelude.Text -> DRTAccess
mkDRTAccess roleArn
  = DRTAccess
      {haddock_workaround_ = (), roleArn = roleArn,
       logBucketList = Prelude.Nothing}
instance ToResourceProperties DRTAccess where
  toResourceProperties DRTAccess {..}
    = ResourceProperties
        {awsType = "AWS::Shield::DRTAccess", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "LogBucketList" Prelude.<$> logBucketList]))}
instance JSON.ToJSON DRTAccess where
  toJSON DRTAccess {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "LogBucketList" Prelude.<$> logBucketList])))
instance Property "LogBucketList" DRTAccess where
  type PropertyType "LogBucketList" DRTAccess = ValueList Prelude.Text
  set newValue DRTAccess {..}
    = DRTAccess {logBucketList = Prelude.pure newValue, ..}
instance Property "RoleArn" DRTAccess where
  type PropertyType "RoleArn" DRTAccess = Value Prelude.Text
  set newValue DRTAccess {..} = DRTAccess {roleArn = newValue, ..}