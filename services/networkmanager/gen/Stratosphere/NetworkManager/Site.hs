module Stratosphere.NetworkManager.Site (
        module Exports, Site(..), mkSite
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.Site.LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Site
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html>
    Site {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-globalnetworkid>
          globalNetworkId :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-location>
          location :: (Prelude.Maybe LocationProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-site.html#cfn-networkmanager-site-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSite :: Value Prelude.Text -> Site
mkSite globalNetworkId
  = Site
      {haddock_workaround_ = (), globalNetworkId = globalNetworkId,
       description = Prelude.Nothing, location = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Site where
  toResourceProperties Site {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::Site",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GlobalNetworkId" JSON..= globalNetworkId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Site where
  toJSON Site {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GlobalNetworkId" JSON..= globalNetworkId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Site where
  type PropertyType "Description" Site = Value Prelude.Text
  set newValue Site {..}
    = Site {description = Prelude.pure newValue, ..}
instance Property "GlobalNetworkId" Site where
  type PropertyType "GlobalNetworkId" Site = Value Prelude.Text
  set newValue Site {..} = Site {globalNetworkId = newValue, ..}
instance Property "Location" Site where
  type PropertyType "Location" Site = LocationProperty
  set newValue Site {..}
    = Site {location = Prelude.pure newValue, ..}
instance Property "Tags" Site where
  type PropertyType "Tags" Site = [Tag]
  set newValue Site {..} = Site {tags = Prelude.pure newValue, ..}