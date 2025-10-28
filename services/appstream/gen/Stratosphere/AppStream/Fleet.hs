module Stratosphere.AppStream.Fleet (
        module Exports, Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.Fleet.ComputeCapacityProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Fleet.DomainJoinInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Fleet.S3LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.Fleet.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html>
    Fleet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-computecapacity>
           computeCapacity :: (Prelude.Maybe ComputeCapacityProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-disconnecttimeoutinseconds>
           disconnectTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-displayname>
           displayName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-domainjoininfo>
           domainJoinInfo :: (Prelude.Maybe DomainJoinInfoProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-enabledefaultinternetaccess>
           enableDefaultInternetAccess :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-fleettype>
           fleetType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-iamrolearn>
           iamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-idledisconnecttimeoutinseconds>
           idleDisconnectTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-imagearn>
           imageArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-imagename>
           imageName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-instancetype>
           instanceType :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-maxconcurrentsessions>
           maxConcurrentSessions :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-maxsessionsperinstance>
           maxSessionsPerInstance :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-maxuserdurationinseconds>
           maxUserDurationInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-name>
           name :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-platform>
           platform :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-sessionscripts3location>
           sessionScriptS3Location :: (Prelude.Maybe S3LocationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-streamview>
           streamView :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-usbdevicefilterstrings>
           usbDeviceFilterStrings :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-vpcconfig>
           vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet :: Value Prelude.Text -> Value Prelude.Text -> Fleet
mkFleet instanceType name
  = Fleet
      {haddock_workaround_ = (), instanceType = instanceType,
       name = name, computeCapacity = Prelude.Nothing,
       description = Prelude.Nothing,
       disconnectTimeoutInSeconds = Prelude.Nothing,
       displayName = Prelude.Nothing, domainJoinInfo = Prelude.Nothing,
       enableDefaultInternetAccess = Prelude.Nothing,
       fleetType = Prelude.Nothing, iamRoleArn = Prelude.Nothing,
       idleDisconnectTimeoutInSeconds = Prelude.Nothing,
       imageArn = Prelude.Nothing, imageName = Prelude.Nothing,
       maxConcurrentSessions = Prelude.Nothing,
       maxSessionsPerInstance = Prelude.Nothing,
       maxUserDurationInSeconds = Prelude.Nothing,
       platform = Prelude.Nothing,
       sessionScriptS3Location = Prelude.Nothing,
       streamView = Prelude.Nothing, tags = Prelude.Nothing,
       usbDeviceFilterStrings = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ComputeCapacity" Prelude.<$> computeCapacity,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisconnectTimeoutInSeconds"
                                 Prelude.<$> disconnectTimeoutInSeconds,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "DomainJoinInfo" Prelude.<$> domainJoinInfo,
                               (JSON..=) "EnableDefaultInternetAccess"
                                 Prelude.<$> enableDefaultInternetAccess,
                               (JSON..=) "FleetType" Prelude.<$> fleetType,
                               (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                               (JSON..=) "IdleDisconnectTimeoutInSeconds"
                                 Prelude.<$> idleDisconnectTimeoutInSeconds,
                               (JSON..=) "ImageArn" Prelude.<$> imageArn,
                               (JSON..=) "ImageName" Prelude.<$> imageName,
                               (JSON..=) "MaxConcurrentSessions"
                                 Prelude.<$> maxConcurrentSessions,
                               (JSON..=) "MaxSessionsPerInstance"
                                 Prelude.<$> maxSessionsPerInstance,
                               (JSON..=) "MaxUserDurationInSeconds"
                                 Prelude.<$> maxUserDurationInSeconds,
                               (JSON..=) "Platform" Prelude.<$> platform,
                               (JSON..=) "SessionScriptS3Location"
                                 Prelude.<$> sessionScriptS3Location,
                               (JSON..=) "StreamView" Prelude.<$> streamView,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UsbDeviceFilterStrings"
                                 Prelude.<$> usbDeviceFilterStrings,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ComputeCapacity" Prelude.<$> computeCapacity,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisconnectTimeoutInSeconds"
                    Prelude.<$> disconnectTimeoutInSeconds,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "DomainJoinInfo" Prelude.<$> domainJoinInfo,
                  (JSON..=) "EnableDefaultInternetAccess"
                    Prelude.<$> enableDefaultInternetAccess,
                  (JSON..=) "FleetType" Prelude.<$> fleetType,
                  (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                  (JSON..=) "IdleDisconnectTimeoutInSeconds"
                    Prelude.<$> idleDisconnectTimeoutInSeconds,
                  (JSON..=) "ImageArn" Prelude.<$> imageArn,
                  (JSON..=) "ImageName" Prelude.<$> imageName,
                  (JSON..=) "MaxConcurrentSessions"
                    Prelude.<$> maxConcurrentSessions,
                  (JSON..=) "MaxSessionsPerInstance"
                    Prelude.<$> maxSessionsPerInstance,
                  (JSON..=) "MaxUserDurationInSeconds"
                    Prelude.<$> maxUserDurationInSeconds,
                  (JSON..=) "Platform" Prelude.<$> platform,
                  (JSON..=) "SessionScriptS3Location"
                    Prelude.<$> sessionScriptS3Location,
                  (JSON..=) "StreamView" Prelude.<$> streamView,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UsbDeviceFilterStrings"
                    Prelude.<$> usbDeviceFilterStrings,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "ComputeCapacity" Fleet where
  type PropertyType "ComputeCapacity" Fleet = ComputeCapacityProperty
  set newValue Fleet {..}
    = Fleet {computeCapacity = Prelude.pure newValue, ..}
instance Property "Description" Fleet where
  type PropertyType "Description" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {description = Prelude.pure newValue, ..}
instance Property "DisconnectTimeoutInSeconds" Fleet where
  type PropertyType "DisconnectTimeoutInSeconds" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {disconnectTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "DisplayName" Fleet where
  type PropertyType "DisplayName" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {displayName = Prelude.pure newValue, ..}
instance Property "DomainJoinInfo" Fleet where
  type PropertyType "DomainJoinInfo" Fleet = DomainJoinInfoProperty
  set newValue Fleet {..}
    = Fleet {domainJoinInfo = Prelude.pure newValue, ..}
instance Property "EnableDefaultInternetAccess" Fleet where
  type PropertyType "EnableDefaultInternetAccess" Fleet = Value Prelude.Bool
  set newValue Fleet {..}
    = Fleet {enableDefaultInternetAccess = Prelude.pure newValue, ..}
instance Property "FleetType" Fleet where
  type PropertyType "FleetType" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {fleetType = Prelude.pure newValue, ..}
instance Property "IamRoleArn" Fleet where
  type PropertyType "IamRoleArn" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {iamRoleArn = Prelude.pure newValue, ..}
instance Property "IdleDisconnectTimeoutInSeconds" Fleet where
  type PropertyType "IdleDisconnectTimeoutInSeconds" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet
        {idleDisconnectTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "ImageArn" Fleet where
  type PropertyType "ImageArn" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {imageArn = Prelude.pure newValue, ..}
instance Property "ImageName" Fleet where
  type PropertyType "ImageName" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {imageName = Prelude.pure newValue, ..}
instance Property "InstanceType" Fleet where
  type PropertyType "InstanceType" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {instanceType = newValue, ..}
instance Property "MaxConcurrentSessions" Fleet where
  type PropertyType "MaxConcurrentSessions" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {maxConcurrentSessions = Prelude.pure newValue, ..}
instance Property "MaxSessionsPerInstance" Fleet where
  type PropertyType "MaxSessionsPerInstance" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {maxSessionsPerInstance = Prelude.pure newValue, ..}
instance Property "MaxUserDurationInSeconds" Fleet where
  type PropertyType "MaxUserDurationInSeconds" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {maxUserDurationInSeconds = Prelude.pure newValue, ..}
instance Property "Name" Fleet where
  type PropertyType "Name" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {name = newValue, ..}
instance Property "Platform" Fleet where
  type PropertyType "Platform" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {platform = Prelude.pure newValue, ..}
instance Property "SessionScriptS3Location" Fleet where
  type PropertyType "SessionScriptS3Location" Fleet = S3LocationProperty
  set newValue Fleet {..}
    = Fleet {sessionScriptS3Location = Prelude.pure newValue, ..}
instance Property "StreamView" Fleet where
  type PropertyType "StreamView" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {streamView = Prelude.pure newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = [Tag]
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}
instance Property "UsbDeviceFilterStrings" Fleet where
  type PropertyType "UsbDeviceFilterStrings" Fleet = ValueList Prelude.Text
  set newValue Fleet {..}
    = Fleet {usbDeviceFilterStrings = Prelude.pure newValue, ..}
instance Property "VpcConfig" Fleet where
  type PropertyType "VpcConfig" Fleet = VpcConfigProperty
  set newValue Fleet {..}
    = Fleet {vpcConfig = Prelude.pure newValue, ..}