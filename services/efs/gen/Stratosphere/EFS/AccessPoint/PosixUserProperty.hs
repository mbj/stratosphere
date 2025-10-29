module Stratosphere.EFS.AccessPoint.PosixUserProperty (
        PosixUserProperty(..), mkPosixUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PosixUserProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html>
    PosixUserProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-gid>
                       gid :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-secondarygids>
                       secondaryGids :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-uid>
                       uid :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPosixUserProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PosixUserProperty
mkPosixUserProperty gid uid
  = PosixUserProperty
      {gid = gid, uid = uid, secondaryGids = Prelude.Nothing}
instance ToResourceProperties PosixUserProperty where
  toResourceProperties PosixUserProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::AccessPoint.PosixUser",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Gid" JSON..= gid, "Uid" JSON..= uid]
                           (Prelude.catMaybes
                              [(JSON..=) "SecondaryGids" Prelude.<$> secondaryGids]))}
instance JSON.ToJSON PosixUserProperty where
  toJSON PosixUserProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Gid" JSON..= gid, "Uid" JSON..= uid]
              (Prelude.catMaybes
                 [(JSON..=) "SecondaryGids" Prelude.<$> secondaryGids])))
instance Property "Gid" PosixUserProperty where
  type PropertyType "Gid" PosixUserProperty = Value Prelude.Text
  set newValue PosixUserProperty {..}
    = PosixUserProperty {gid = newValue, ..}
instance Property "SecondaryGids" PosixUserProperty where
  type PropertyType "SecondaryGids" PosixUserProperty = ValueList Prelude.Text
  set newValue PosixUserProperty {..}
    = PosixUserProperty {secondaryGids = Prelude.pure newValue, ..}
instance Property "Uid" PosixUserProperty where
  type PropertyType "Uid" PosixUserProperty = Value Prelude.Text
  set newValue PosixUserProperty {..}
    = PosixUserProperty {uid = newValue, ..}