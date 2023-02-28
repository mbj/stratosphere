module Stratosphere.NimbleStudio.LaunchProfile (
        module Exports, LaunchProfile(..), mkLaunchProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.LaunchProfile.StreamConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchProfile
  = LaunchProfile {description :: (Prelude.Maybe (Value Prelude.Text)),
                   ec2SubnetIds :: (ValueList Prelude.Text),
                   launchProfileProtocolVersions :: (ValueList Prelude.Text),
                   name :: (Value Prelude.Text),
                   streamConfiguration :: StreamConfigurationProperty,
                   studioComponentIds :: (ValueList Prelude.Text),
                   studioId :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkLaunchProfile ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text
        -> StreamConfigurationProperty
           -> ValueList Prelude.Text -> Value Prelude.Text -> LaunchProfile
mkLaunchProfile
  ec2SubnetIds
  launchProfileProtocolVersions
  name
  streamConfiguration
  studioComponentIds
  studioId
  = LaunchProfile
      {ec2SubnetIds = ec2SubnetIds,
       launchProfileProtocolVersions = launchProfileProtocolVersions,
       name = name, streamConfiguration = streamConfiguration,
       studioComponentIds = studioComponentIds, studioId = studioId,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LaunchProfile where
  toResourceProperties LaunchProfile {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::LaunchProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ec2SubnetIds" JSON..= ec2SubnetIds,
                            "LaunchProfileProtocolVersions"
                              JSON..= launchProfileProtocolVersions,
                            "Name" JSON..= name,
                            "StreamConfiguration" JSON..= streamConfiguration,
                            "StudioComponentIds" JSON..= studioComponentIds,
                            "StudioId" JSON..= studioId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LaunchProfile where
  toJSON LaunchProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ec2SubnetIds" JSON..= ec2SubnetIds,
               "LaunchProfileProtocolVersions"
                 JSON..= launchProfileProtocolVersions,
               "Name" JSON..= name,
               "StreamConfiguration" JSON..= streamConfiguration,
               "StudioComponentIds" JSON..= studioComponentIds,
               "StudioId" JSON..= studioId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" LaunchProfile where
  type PropertyType "Description" LaunchProfile = Value Prelude.Text
  set newValue LaunchProfile {..}
    = LaunchProfile {description = Prelude.pure newValue, ..}
instance Property "Ec2SubnetIds" LaunchProfile where
  type PropertyType "Ec2SubnetIds" LaunchProfile = ValueList Prelude.Text
  set newValue LaunchProfile {..}
    = LaunchProfile {ec2SubnetIds = newValue, ..}
instance Property "LaunchProfileProtocolVersions" LaunchProfile where
  type PropertyType "LaunchProfileProtocolVersions" LaunchProfile = ValueList Prelude.Text
  set newValue LaunchProfile {..}
    = LaunchProfile {launchProfileProtocolVersions = newValue, ..}
instance Property "Name" LaunchProfile where
  type PropertyType "Name" LaunchProfile = Value Prelude.Text
  set newValue LaunchProfile {..}
    = LaunchProfile {name = newValue, ..}
instance Property "StreamConfiguration" LaunchProfile where
  type PropertyType "StreamConfiguration" LaunchProfile = StreamConfigurationProperty
  set newValue LaunchProfile {..}
    = LaunchProfile {streamConfiguration = newValue, ..}
instance Property "StudioComponentIds" LaunchProfile where
  type PropertyType "StudioComponentIds" LaunchProfile = ValueList Prelude.Text
  set newValue LaunchProfile {..}
    = LaunchProfile {studioComponentIds = newValue, ..}
instance Property "StudioId" LaunchProfile where
  type PropertyType "StudioId" LaunchProfile = Value Prelude.Text
  set newValue LaunchProfile {..}
    = LaunchProfile {studioId = newValue, ..}
instance Property "Tags" LaunchProfile where
  type PropertyType "Tags" LaunchProfile = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LaunchProfile {..}
    = LaunchProfile {tags = Prelude.pure newValue, ..}