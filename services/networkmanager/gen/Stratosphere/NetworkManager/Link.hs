module Stratosphere.NetworkManager.Link (
        module Exports, Link(..), mkLink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.Link.BandwidthProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Link
  = Link {bandwidth :: BandwidthProperty,
          description :: (Prelude.Maybe (Value Prelude.Text)),
          globalNetworkId :: (Value Prelude.Text),
          provider :: (Prelude.Maybe (Value Prelude.Text)),
          siteId :: (Value Prelude.Text),
          tags :: (Prelude.Maybe [Tag]),
          type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLink ::
  BandwidthProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Link
mkLink bandwidth globalNetworkId siteId
  = Link
      {bandwidth = bandwidth, globalNetworkId = globalNetworkId,
       siteId = siteId, description = Prelude.Nothing,
       provider = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties Link where
  toResourceProperties Link {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::Link",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bandwidth" JSON..= bandwidth,
                            "GlobalNetworkId" JSON..= globalNetworkId, "SiteId" JSON..= siteId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Provider" Prelude.<$> provider,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON Link where
  toJSON Link {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bandwidth" JSON..= bandwidth,
               "GlobalNetworkId" JSON..= globalNetworkId, "SiteId" JSON..= siteId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Provider" Prelude.<$> provider,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Bandwidth" Link where
  type PropertyType "Bandwidth" Link = BandwidthProperty
  set newValue Link {..} = Link {bandwidth = newValue, ..}
instance Property "Description" Link where
  type PropertyType "Description" Link = Value Prelude.Text
  set newValue Link {..}
    = Link {description = Prelude.pure newValue, ..}
instance Property "GlobalNetworkId" Link where
  type PropertyType "GlobalNetworkId" Link = Value Prelude.Text
  set newValue Link {..} = Link {globalNetworkId = newValue, ..}
instance Property "Provider" Link where
  type PropertyType "Provider" Link = Value Prelude.Text
  set newValue Link {..}
    = Link {provider = Prelude.pure newValue, ..}
instance Property "SiteId" Link where
  type PropertyType "SiteId" Link = Value Prelude.Text
  set newValue Link {..} = Link {siteId = newValue, ..}
instance Property "Tags" Link where
  type PropertyType "Tags" Link = [Tag]
  set newValue Link {..} = Link {tags = Prelude.pure newValue, ..}
instance Property "Type" Link where
  type PropertyType "Type" Link = Value Prelude.Text
  set newValue Link {..} = Link {type' = Prelude.pure newValue, ..}