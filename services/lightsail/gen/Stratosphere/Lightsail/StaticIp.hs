module Stratosphere.Lightsail.StaticIp (
        StaticIp(..), mkStaticIp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticIp
  = StaticIp {attachedTo :: (Prelude.Maybe (Value Prelude.Text)),
              staticIpName :: (Value Prelude.Text)}
mkStaticIp :: Value Prelude.Text -> StaticIp
mkStaticIp staticIpName
  = StaticIp
      {staticIpName = staticIpName, attachedTo = Prelude.Nothing}
instance ToResourceProperties StaticIp where
  toResourceProperties StaticIp {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::StaticIp",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StaticIpName" JSON..= staticIpName]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachedTo" Prelude.<$> attachedTo]))}
instance JSON.ToJSON StaticIp where
  toJSON StaticIp {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StaticIpName" JSON..= staticIpName]
              (Prelude.catMaybes
                 [(JSON..=) "AttachedTo" Prelude.<$> attachedTo])))
instance Property "AttachedTo" StaticIp where
  type PropertyType "AttachedTo" StaticIp = Value Prelude.Text
  set newValue StaticIp {..}
    = StaticIp {attachedTo = Prelude.pure newValue, ..}
instance Property "StaticIpName" StaticIp where
  type PropertyType "StaticIpName" StaticIp = Value Prelude.Text
  set newValue StaticIp {..} = StaticIp {staticIpName = newValue, ..}