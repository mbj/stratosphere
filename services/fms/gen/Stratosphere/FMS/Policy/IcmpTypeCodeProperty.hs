module Stratosphere.FMS.Policy.IcmpTypeCodeProperty (
        IcmpTypeCodeProperty(..), mkIcmpTypeCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcmpTypeCodeProperty
  = IcmpTypeCodeProperty {code :: (Value Prelude.Integer),
                          type' :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcmpTypeCodeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> IcmpTypeCodeProperty
mkIcmpTypeCodeProperty code type'
  = IcmpTypeCodeProperty {code = code, type' = type'}
instance ToResourceProperties IcmpTypeCodeProperty where
  toResourceProperties IcmpTypeCodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.IcmpTypeCode",
         supportsTags = Prelude.False,
         properties = ["Code" JSON..= code, "Type" JSON..= type']}
instance JSON.ToJSON IcmpTypeCodeProperty where
  toJSON IcmpTypeCodeProperty {..}
    = JSON.object ["Code" JSON..= code, "Type" JSON..= type']
instance Property "Code" IcmpTypeCodeProperty where
  type PropertyType "Code" IcmpTypeCodeProperty = Value Prelude.Integer
  set newValue IcmpTypeCodeProperty {..}
    = IcmpTypeCodeProperty {code = newValue, ..}
instance Property "Type" IcmpTypeCodeProperty where
  type PropertyType "Type" IcmpTypeCodeProperty = Value Prelude.Integer
  set newValue IcmpTypeCodeProperty {..}
    = IcmpTypeCodeProperty {type' = newValue, ..}