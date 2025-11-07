module Stratosphere.WAFv2.WebACL.ClientSideActionConfigProperty (
        module Exports, ClientSideActionConfigProperty(..),
        mkClientSideActionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ClientSideActionProperty as Exports
import Stratosphere.ResourceProperties
data ClientSideActionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-clientsideactionconfig.html>
    ClientSideActionConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-clientsideactionconfig.html#cfn-wafv2-webacl-clientsideactionconfig-challenge>
                                    challenge :: ClientSideActionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientSideActionConfigProperty ::
  ClientSideActionProperty -> ClientSideActionConfigProperty
mkClientSideActionConfigProperty challenge
  = ClientSideActionConfigProperty
      {haddock_workaround_ = (), challenge = challenge}
instance ToResourceProperties ClientSideActionConfigProperty where
  toResourceProperties ClientSideActionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ClientSideActionConfig",
         supportsTags = Prelude.False,
         properties = ["Challenge" JSON..= challenge]}
instance JSON.ToJSON ClientSideActionConfigProperty where
  toJSON ClientSideActionConfigProperty {..}
    = JSON.object ["Challenge" JSON..= challenge]
instance Property "Challenge" ClientSideActionConfigProperty where
  type PropertyType "Challenge" ClientSideActionConfigProperty = ClientSideActionProperty
  set newValue ClientSideActionConfigProperty {..}
    = ClientSideActionConfigProperty {challenge = newValue, ..}