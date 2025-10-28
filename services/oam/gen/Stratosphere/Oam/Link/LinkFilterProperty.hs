module Stratosphere.Oam.Link.LinkFilterProperty (
        LinkFilterProperty(..), mkLinkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LinkFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-oam-link-linkfilter.html>
    LinkFilterProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-oam-link-linkfilter.html#cfn-oam-link-linkfilter-filter>
                        filter :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinkFilterProperty :: Value Prelude.Text -> LinkFilterProperty
mkLinkFilterProperty filter
  = LinkFilterProperty {haddock_workaround_ = (), filter = filter}
instance ToResourceProperties LinkFilterProperty where
  toResourceProperties LinkFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Oam::Link.LinkFilter",
         supportsTags = Prelude.False,
         properties = ["Filter" JSON..= filter]}
instance JSON.ToJSON LinkFilterProperty where
  toJSON LinkFilterProperty {..}
    = JSON.object ["Filter" JSON..= filter]
instance Property "Filter" LinkFilterProperty where
  type PropertyType "Filter" LinkFilterProperty = Value Prelude.Text
  set newValue LinkFilterProperty {..}
    = LinkFilterProperty {filter = newValue, ..}