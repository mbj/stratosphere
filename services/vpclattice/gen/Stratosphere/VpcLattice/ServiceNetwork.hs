module Stratosphere.VpcLattice.ServiceNetwork (
        ServiceNetwork(..), mkServiceNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceNetwork
  = ServiceNetwork {authType :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNetwork :: ServiceNetwork
mkServiceNetwork
  = ServiceNetwork
      {authType = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ServiceNetwork where
  toResourceProperties ServiceNetwork {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ServiceNetwork",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthType" Prelude.<$> authType,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServiceNetwork where
  toJSON ServiceNetwork {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthType" Prelude.<$> authType,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AuthType" ServiceNetwork where
  type PropertyType "AuthType" ServiceNetwork = Value Prelude.Text
  set newValue ServiceNetwork {..}
    = ServiceNetwork {authType = Prelude.pure newValue, ..}
instance Property "Name" ServiceNetwork where
  type PropertyType "Name" ServiceNetwork = Value Prelude.Text
  set newValue ServiceNetwork {..}
    = ServiceNetwork {name = Prelude.pure newValue, ..}
instance Property "Tags" ServiceNetwork where
  type PropertyType "Tags" ServiceNetwork = [Tag]
  set newValue ServiceNetwork {..}
    = ServiceNetwork {tags = Prelude.pure newValue, ..}