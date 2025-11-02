module Stratosphere.VpcLattice.Listener.DefaultActionProperty (
        module Exports, DefaultActionProperty(..), mkDefaultActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Listener.FixedResponseProperty as Exports
import {-# SOURCE #-} Stratosphere.VpcLattice.Listener.ForwardProperty as Exports
import Stratosphere.ResourceProperties
data DefaultActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-listener-defaultaction.html>
    DefaultActionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-listener-defaultaction.html#cfn-vpclattice-listener-defaultaction-fixedresponse>
                           fixedResponse :: (Prelude.Maybe FixedResponseProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-listener-defaultaction.html#cfn-vpclattice-listener-defaultaction-forward>
                           forward :: (Prelude.Maybe ForwardProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultActionProperty :: DefaultActionProperty
mkDefaultActionProperty
  = DefaultActionProperty
      {haddock_workaround_ = (), fixedResponse = Prelude.Nothing,
       forward = Prelude.Nothing}
instance ToResourceProperties DefaultActionProperty where
  toResourceProperties DefaultActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Listener.DefaultAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FixedResponse" Prelude.<$> fixedResponse,
                            (JSON..=) "Forward" Prelude.<$> forward])}
instance JSON.ToJSON DefaultActionProperty where
  toJSON DefaultActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FixedResponse" Prelude.<$> fixedResponse,
               (JSON..=) "Forward" Prelude.<$> forward]))
instance Property "FixedResponse" DefaultActionProperty where
  type PropertyType "FixedResponse" DefaultActionProperty = FixedResponseProperty
  set newValue DefaultActionProperty {..}
    = DefaultActionProperty {fixedResponse = Prelude.pure newValue, ..}
instance Property "Forward" DefaultActionProperty where
  type PropertyType "Forward" DefaultActionProperty = ForwardProperty
  set newValue DefaultActionProperty {..}
    = DefaultActionProperty {forward = Prelude.pure newValue, ..}