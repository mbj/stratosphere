module Stratosphere.MediaPackage.OriginEndpoint (
        module Exports, OriginEndpoint(..), mkOriginEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.AuthorizationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.CmafPackageProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.DashPackageProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.HlsPackageProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.MssPackageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OriginEndpoint
  = OriginEndpoint {authorization :: (Prelude.Maybe AuthorizationProperty),
                    channelId :: (Value Prelude.Text),
                    cmafPackage :: (Prelude.Maybe CmafPackageProperty),
                    dashPackage :: (Prelude.Maybe DashPackageProperty),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    hlsPackage :: (Prelude.Maybe HlsPackageProperty),
                    id :: (Value Prelude.Text),
                    manifestName :: (Prelude.Maybe (Value Prelude.Text)),
                    mssPackage :: (Prelude.Maybe MssPackageProperty),
                    origination :: (Prelude.Maybe (Value Prelude.Text)),
                    startoverWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                    tags :: (Prelude.Maybe [Tag]),
                    timeDelaySeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                    whitelist :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> OriginEndpoint
mkOriginEndpoint channelId id
  = OriginEndpoint
      {channelId = channelId, id = id, authorization = Prelude.Nothing,
       cmafPackage = Prelude.Nothing, dashPackage = Prelude.Nothing,
       description = Prelude.Nothing, hlsPackage = Prelude.Nothing,
       manifestName = Prelude.Nothing, mssPackage = Prelude.Nothing,
       origination = Prelude.Nothing,
       startoverWindowSeconds = Prelude.Nothing, tags = Prelude.Nothing,
       timeDelaySeconds = Prelude.Nothing, whitelist = Prelude.Nothing}
instance ToResourceProperties OriginEndpoint where
  toResourceProperties OriginEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelId" JSON..= channelId, "Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Authorization" Prelude.<$> authorization,
                               (JSON..=) "CmafPackage" Prelude.<$> cmafPackage,
                               (JSON..=) "DashPackage" Prelude.<$> dashPackage,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "HlsPackage" Prelude.<$> hlsPackage,
                               (JSON..=) "ManifestName" Prelude.<$> manifestName,
                               (JSON..=) "MssPackage" Prelude.<$> mssPackage,
                               (JSON..=) "Origination" Prelude.<$> origination,
                               (JSON..=) "StartoverWindowSeconds"
                                 Prelude.<$> startoverWindowSeconds,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TimeDelaySeconds" Prelude.<$> timeDelaySeconds,
                               (JSON..=) "Whitelist" Prelude.<$> whitelist]))}
instance JSON.ToJSON OriginEndpoint where
  toJSON OriginEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelId" JSON..= channelId, "Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Authorization" Prelude.<$> authorization,
                  (JSON..=) "CmafPackage" Prelude.<$> cmafPackage,
                  (JSON..=) "DashPackage" Prelude.<$> dashPackage,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "HlsPackage" Prelude.<$> hlsPackage,
                  (JSON..=) "ManifestName" Prelude.<$> manifestName,
                  (JSON..=) "MssPackage" Prelude.<$> mssPackage,
                  (JSON..=) "Origination" Prelude.<$> origination,
                  (JSON..=) "StartoverWindowSeconds"
                    Prelude.<$> startoverWindowSeconds,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TimeDelaySeconds" Prelude.<$> timeDelaySeconds,
                  (JSON..=) "Whitelist" Prelude.<$> whitelist])))
instance Property "Authorization" OriginEndpoint where
  type PropertyType "Authorization" OriginEndpoint = AuthorizationProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint {authorization = Prelude.pure newValue, ..}
instance Property "ChannelId" OriginEndpoint where
  type PropertyType "ChannelId" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {channelId = newValue, ..}
instance Property "CmafPackage" OriginEndpoint where
  type PropertyType "CmafPackage" OriginEndpoint = CmafPackageProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint {cmafPackage = Prelude.pure newValue, ..}
instance Property "DashPackage" OriginEndpoint where
  type PropertyType "DashPackage" OriginEndpoint = DashPackageProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint {dashPackage = Prelude.pure newValue, ..}
instance Property "Description" OriginEndpoint where
  type PropertyType "Description" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {description = Prelude.pure newValue, ..}
instance Property "HlsPackage" OriginEndpoint where
  type PropertyType "HlsPackage" OriginEndpoint = HlsPackageProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint {hlsPackage = Prelude.pure newValue, ..}
instance Property "Id" OriginEndpoint where
  type PropertyType "Id" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {id = newValue, ..}
instance Property "ManifestName" OriginEndpoint where
  type PropertyType "ManifestName" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {manifestName = Prelude.pure newValue, ..}
instance Property "MssPackage" OriginEndpoint where
  type PropertyType "MssPackage" OriginEndpoint = MssPackageProperty
  set newValue OriginEndpoint {..}
    = OriginEndpoint {mssPackage = Prelude.pure newValue, ..}
instance Property "Origination" OriginEndpoint where
  type PropertyType "Origination" OriginEndpoint = Value Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {origination = Prelude.pure newValue, ..}
instance Property "StartoverWindowSeconds" OriginEndpoint where
  type PropertyType "StartoverWindowSeconds" OriginEndpoint = Value Prelude.Integer
  set newValue OriginEndpoint {..}
    = OriginEndpoint
        {startoverWindowSeconds = Prelude.pure newValue, ..}
instance Property "Tags" OriginEndpoint where
  type PropertyType "Tags" OriginEndpoint = [Tag]
  set newValue OriginEndpoint {..}
    = OriginEndpoint {tags = Prelude.pure newValue, ..}
instance Property "TimeDelaySeconds" OriginEndpoint where
  type PropertyType "TimeDelaySeconds" OriginEndpoint = Value Prelude.Integer
  set newValue OriginEndpoint {..}
    = OriginEndpoint {timeDelaySeconds = Prelude.pure newValue, ..}
instance Property "Whitelist" OriginEndpoint where
  type PropertyType "Whitelist" OriginEndpoint = ValueList Prelude.Text
  set newValue OriginEndpoint {..}
    = OriginEndpoint {whitelist = Prelude.pure newValue, ..}