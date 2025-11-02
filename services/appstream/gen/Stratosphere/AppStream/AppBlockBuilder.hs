module Stratosphere.AppStream.AppBlockBuilder (
        module Exports, AppBlockBuilder(..), mkAppBlockBuilder
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.AppBlockBuilder.AccessEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.AppBlockBuilder.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AppBlockBuilder
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html>
    AppBlockBuilder {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-accessendpoints>
                     accessEndpoints :: (Prelude.Maybe [AccessEndpointProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-appblockarns>
                     appBlockArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-displayname>
                     displayName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-enabledefaultinternetaccess>
                     enableDefaultInternetAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-iamrolearn>
                     iamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-instancetype>
                     instanceType :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-platform>
                     platform :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-appblockbuilder.html#cfn-appstream-appblockbuilder-vpcconfig>
                     vpcConfig :: VpcConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppBlockBuilder ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> VpcConfigProperty -> AppBlockBuilder
mkAppBlockBuilder instanceType name platform vpcConfig
  = AppBlockBuilder
      {haddock_workaround_ = (), instanceType = instanceType,
       name = name, platform = platform, vpcConfig = vpcConfig,
       accessEndpoints = Prelude.Nothing, appBlockArns = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       enableDefaultInternetAccess = Prelude.Nothing,
       iamRoleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AppBlockBuilder where
  toResourceProperties AppBlockBuilder {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::AppBlockBuilder",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType, "Name" JSON..= name,
                            "Platform" JSON..= platform, "VpcConfig" JSON..= vpcConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessEndpoints" Prelude.<$> accessEndpoints,
                               (JSON..=) "AppBlockArns" Prelude.<$> appBlockArns,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "EnableDefaultInternetAccess"
                                 Prelude.<$> enableDefaultInternetAccess,
                               (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AppBlockBuilder where
  toJSON AppBlockBuilder {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType, "Name" JSON..= name,
               "Platform" JSON..= platform, "VpcConfig" JSON..= vpcConfig]
              (Prelude.catMaybes
                 [(JSON..=) "AccessEndpoints" Prelude.<$> accessEndpoints,
                  (JSON..=) "AppBlockArns" Prelude.<$> appBlockArns,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "EnableDefaultInternetAccess"
                    Prelude.<$> enableDefaultInternetAccess,
                  (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessEndpoints" AppBlockBuilder where
  type PropertyType "AccessEndpoints" AppBlockBuilder = [AccessEndpointProperty]
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {accessEndpoints = Prelude.pure newValue, ..}
instance Property "AppBlockArns" AppBlockBuilder where
  type PropertyType "AppBlockArns" AppBlockBuilder = ValueList Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {appBlockArns = Prelude.pure newValue, ..}
instance Property "Description" AppBlockBuilder where
  type PropertyType "Description" AppBlockBuilder = Value Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {description = Prelude.pure newValue, ..}
instance Property "DisplayName" AppBlockBuilder where
  type PropertyType "DisplayName" AppBlockBuilder = Value Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {displayName = Prelude.pure newValue, ..}
instance Property "EnableDefaultInternetAccess" AppBlockBuilder where
  type PropertyType "EnableDefaultInternetAccess" AppBlockBuilder = Value Prelude.Bool
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder
        {enableDefaultInternetAccess = Prelude.pure newValue, ..}
instance Property "IamRoleArn" AppBlockBuilder where
  type PropertyType "IamRoleArn" AppBlockBuilder = Value Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {iamRoleArn = Prelude.pure newValue, ..}
instance Property "InstanceType" AppBlockBuilder where
  type PropertyType "InstanceType" AppBlockBuilder = Value Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {instanceType = newValue, ..}
instance Property "Name" AppBlockBuilder where
  type PropertyType "Name" AppBlockBuilder = Value Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {name = newValue, ..}
instance Property "Platform" AppBlockBuilder where
  type PropertyType "Platform" AppBlockBuilder = Value Prelude.Text
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {platform = newValue, ..}
instance Property "Tags" AppBlockBuilder where
  type PropertyType "Tags" AppBlockBuilder = [Tag]
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {tags = Prelude.pure newValue, ..}
instance Property "VpcConfig" AppBlockBuilder where
  type PropertyType "VpcConfig" AppBlockBuilder = VpcConfigProperty
  set newValue AppBlockBuilder {..}
    = AppBlockBuilder {vpcConfig = newValue, ..}