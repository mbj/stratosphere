module Stratosphere.Transfer.User.PosixProfileProperty (
        PosixProfileProperty(..), mkPosixProfileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PosixProfileProperty
  = PosixProfileProperty {gid :: (Value Prelude.Double),
                          secondaryGids :: (Prelude.Maybe (ValueList Prelude.Double)),
                          uid :: (Value Prelude.Double)}
mkPosixProfileProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> PosixProfileProperty
mkPosixProfileProperty gid uid
  = PosixProfileProperty
      {gid = gid, uid = uid, secondaryGids = Prelude.Nothing}
instance ToResourceProperties PosixProfileProperty where
  toResourceProperties PosixProfileProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::User.PosixProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Gid" JSON..= gid, "Uid" JSON..= uid]
                           (Prelude.catMaybes
                              [(JSON..=) "SecondaryGids" Prelude.<$> secondaryGids]))}
instance JSON.ToJSON PosixProfileProperty where
  toJSON PosixProfileProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Gid" JSON..= gid, "Uid" JSON..= uid]
              (Prelude.catMaybes
                 [(JSON..=) "SecondaryGids" Prelude.<$> secondaryGids])))
instance Property "Gid" PosixProfileProperty where
  type PropertyType "Gid" PosixProfileProperty = Value Prelude.Double
  set newValue PosixProfileProperty {..}
    = PosixProfileProperty {gid = newValue, ..}
instance Property "SecondaryGids" PosixProfileProperty where
  type PropertyType "SecondaryGids" PosixProfileProperty = ValueList Prelude.Double
  set newValue PosixProfileProperty {..}
    = PosixProfileProperty {secondaryGids = Prelude.pure newValue, ..}
instance Property "Uid" PosixProfileProperty where
  type PropertyType "Uid" PosixProfileProperty = Value Prelude.Double
  set newValue PosixProfileProperty {..}
    = PosixProfileProperty {uid = newValue, ..}