module Stratosphere.EFS.AccessPoint.PosixUserProperty (
        PosixUserProperty(..), mkPosixUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PosixUserProperty
  = PosixUserProperty {gid :: (Value Prelude.Text),
                       secondaryGids :: (Prelude.Maybe (ValueList Prelude.Text)),
                       uid :: (Value Prelude.Text)}
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