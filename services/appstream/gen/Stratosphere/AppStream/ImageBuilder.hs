module Stratosphere.AppStream.ImageBuilder (
        module Exports, ImageBuilder(..), mkImageBuilder
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.ImageBuilder.AccessEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.ImageBuilder.DomainJoinInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.ImageBuilder.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ImageBuilder
  = ImageBuilder {accessEndpoints :: (Prelude.Maybe [AccessEndpointProperty]),
                  appstreamAgentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  displayName :: (Prelude.Maybe (Value Prelude.Text)),
                  domainJoinInfo :: (Prelude.Maybe DomainJoinInfoProperty),
                  enableDefaultInternetAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                  iamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                  imageArn :: (Prelude.Maybe (Value Prelude.Text)),
                  imageName :: (Prelude.Maybe (Value Prelude.Text)),
                  instanceType :: (Value Prelude.Text),
                  name :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag]),
                  vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageBuilder ::
  Value Prelude.Text -> Value Prelude.Text -> ImageBuilder
mkImageBuilder instanceType name
  = ImageBuilder
      {instanceType = instanceType, name = name,
       accessEndpoints = Prelude.Nothing,
       appstreamAgentVersion = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       domainJoinInfo = Prelude.Nothing,
       enableDefaultInternetAccess = Prelude.Nothing,
       iamRoleArn = Prelude.Nothing, imageArn = Prelude.Nothing,
       imageName = Prelude.Nothing, tags = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties ImageBuilder where
  toResourceProperties ImageBuilder {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ImageBuilder",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessEndpoints" Prelude.<$> accessEndpoints,
                               (JSON..=) "AppstreamAgentVersion"
                                 Prelude.<$> appstreamAgentVersion,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "DomainJoinInfo" Prelude.<$> domainJoinInfo,
                               (JSON..=) "EnableDefaultInternetAccess"
                                 Prelude.<$> enableDefaultInternetAccess,
                               (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                               (JSON..=) "ImageArn" Prelude.<$> imageArn,
                               (JSON..=) "ImageName" Prelude.<$> imageName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON ImageBuilder where
  toJSON ImageBuilder {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AccessEndpoints" Prelude.<$> accessEndpoints,
                  (JSON..=) "AppstreamAgentVersion"
                    Prelude.<$> appstreamAgentVersion,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "DomainJoinInfo" Prelude.<$> domainJoinInfo,
                  (JSON..=) "EnableDefaultInternetAccess"
                    Prelude.<$> enableDefaultInternetAccess,
                  (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                  (JSON..=) "ImageArn" Prelude.<$> imageArn,
                  (JSON..=) "ImageName" Prelude.<$> imageName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "AccessEndpoints" ImageBuilder where
  type PropertyType "AccessEndpoints" ImageBuilder = [AccessEndpointProperty]
  set newValue ImageBuilder {..}
    = ImageBuilder {accessEndpoints = Prelude.pure newValue, ..}
instance Property "AppstreamAgentVersion" ImageBuilder where
  type PropertyType "AppstreamAgentVersion" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {appstreamAgentVersion = Prelude.pure newValue, ..}
instance Property "Description" ImageBuilder where
  type PropertyType "Description" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {description = Prelude.pure newValue, ..}
instance Property "DisplayName" ImageBuilder where
  type PropertyType "DisplayName" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {displayName = Prelude.pure newValue, ..}
instance Property "DomainJoinInfo" ImageBuilder where
  type PropertyType "DomainJoinInfo" ImageBuilder = DomainJoinInfoProperty
  set newValue ImageBuilder {..}
    = ImageBuilder {domainJoinInfo = Prelude.pure newValue, ..}
instance Property "EnableDefaultInternetAccess" ImageBuilder where
  type PropertyType "EnableDefaultInternetAccess" ImageBuilder = Value Prelude.Bool
  set newValue ImageBuilder {..}
    = ImageBuilder
        {enableDefaultInternetAccess = Prelude.pure newValue, ..}
instance Property "IamRoleArn" ImageBuilder where
  type PropertyType "IamRoleArn" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {iamRoleArn = Prelude.pure newValue, ..}
instance Property "ImageArn" ImageBuilder where
  type PropertyType "ImageArn" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {imageArn = Prelude.pure newValue, ..}
instance Property "ImageName" ImageBuilder where
  type PropertyType "ImageName" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {imageName = Prelude.pure newValue, ..}
instance Property "InstanceType" ImageBuilder where
  type PropertyType "InstanceType" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..}
    = ImageBuilder {instanceType = newValue, ..}
instance Property "Name" ImageBuilder where
  type PropertyType "Name" ImageBuilder = Value Prelude.Text
  set newValue ImageBuilder {..} = ImageBuilder {name = newValue, ..}
instance Property "Tags" ImageBuilder where
  type PropertyType "Tags" ImageBuilder = [Tag]
  set newValue ImageBuilder {..}
    = ImageBuilder {tags = Prelude.pure newValue, ..}
instance Property "VpcConfig" ImageBuilder where
  type PropertyType "VpcConfig" ImageBuilder = VpcConfigProperty
  set newValue ImageBuilder {..}
    = ImageBuilder {vpcConfig = Prelude.pure newValue, ..}