module Stratosphere.Shield.DRTAccess (
        DRTAccess(..), mkDRTAccess
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DRTAccess
  = DRTAccess {logBucketList :: (Prelude.Maybe (ValueList Prelude.Text)),
               roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDRTAccess :: Value Prelude.Text -> DRTAccess
mkDRTAccess roleArn
  = DRTAccess {roleArn = roleArn, logBucketList = Prelude.Nothing}
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