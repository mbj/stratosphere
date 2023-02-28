module Stratosphere.EC2.IPAMScope (
        IPAMScope(..), mkIPAMScope
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAMScope
  = IPAMScope {description :: (Prelude.Maybe (Value Prelude.Text)),
               ipamId :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkIPAMScope :: Value Prelude.Text -> IPAMScope
mkIPAMScope ipamId
  = IPAMScope
      {ipamId = ipamId, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IPAMScope where
  toResourceProperties IPAMScope {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMScope", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpamId" JSON..= ipamId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPAMScope where
  toJSON IPAMScope {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpamId" JSON..= ipamId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IPAMScope where
  type PropertyType "Description" IPAMScope = Value Prelude.Text
  set newValue IPAMScope {..}
    = IPAMScope {description = Prelude.pure newValue, ..}
instance Property "IpamId" IPAMScope where
  type PropertyType "IpamId" IPAMScope = Value Prelude.Text
  set newValue IPAMScope {..} = IPAMScope {ipamId = newValue, ..}
instance Property "Tags" IPAMScope where
  type PropertyType "Tags" IPAMScope = [Tag]
  set newValue IPAMScope {..}
    = IPAMScope {tags = Prelude.pure newValue, ..}