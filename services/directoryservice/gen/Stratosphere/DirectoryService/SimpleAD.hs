module Stratosphere.DirectoryService.SimpleAD (
        module Exports, SimpleAD(..), mkSimpleAD
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DirectoryService.SimpleAD.VpcSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimpleAD
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html>
    SimpleAD {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-createalias>
              createAlias :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-enablesso>
              enableSso :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-password>
              password :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-shortname>
              shortName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-size>
              size :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-vpcsettings>
              vpcSettings :: VpcSettingsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimpleAD ::
  Value Prelude.Text
  -> Value Prelude.Text -> VpcSettingsProperty -> SimpleAD
mkSimpleAD name size vpcSettings
  = SimpleAD
      {haddock_workaround_ = (), name = name, size = size,
       vpcSettings = vpcSettings, createAlias = Prelude.Nothing,
       description = Prelude.Nothing, enableSso = Prelude.Nothing,
       password = Prelude.Nothing, shortName = Prelude.Nothing}
instance ToResourceProperties SimpleAD where
  toResourceProperties SimpleAD {..}
    = ResourceProperties
        {awsType = "AWS::DirectoryService::SimpleAD",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Size" JSON..= size,
                            "VpcSettings" JSON..= vpcSettings]
                           (Prelude.catMaybes
                              [(JSON..=) "CreateAlias" Prelude.<$> createAlias,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableSso" Prelude.<$> enableSso,
                               (JSON..=) "Password" Prelude.<$> password,
                               (JSON..=) "ShortName" Prelude.<$> shortName]))}
instance JSON.ToJSON SimpleAD where
  toJSON SimpleAD {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Size" JSON..= size,
               "VpcSettings" JSON..= vpcSettings]
              (Prelude.catMaybes
                 [(JSON..=) "CreateAlias" Prelude.<$> createAlias,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableSso" Prelude.<$> enableSso,
                  (JSON..=) "Password" Prelude.<$> password,
                  (JSON..=) "ShortName" Prelude.<$> shortName])))
instance Property "CreateAlias" SimpleAD where
  type PropertyType "CreateAlias" SimpleAD = Value Prelude.Bool
  set newValue SimpleAD {..}
    = SimpleAD {createAlias = Prelude.pure newValue, ..}
instance Property "Description" SimpleAD where
  type PropertyType "Description" SimpleAD = Value Prelude.Text
  set newValue SimpleAD {..}
    = SimpleAD {description = Prelude.pure newValue, ..}
instance Property "EnableSso" SimpleAD where
  type PropertyType "EnableSso" SimpleAD = Value Prelude.Bool
  set newValue SimpleAD {..}
    = SimpleAD {enableSso = Prelude.pure newValue, ..}
instance Property "Name" SimpleAD where
  type PropertyType "Name" SimpleAD = Value Prelude.Text
  set newValue SimpleAD {..} = SimpleAD {name = newValue, ..}
instance Property "Password" SimpleAD where
  type PropertyType "Password" SimpleAD = Value Prelude.Text
  set newValue SimpleAD {..}
    = SimpleAD {password = Prelude.pure newValue, ..}
instance Property "ShortName" SimpleAD where
  type PropertyType "ShortName" SimpleAD = Value Prelude.Text
  set newValue SimpleAD {..}
    = SimpleAD {shortName = Prelude.pure newValue, ..}
instance Property "Size" SimpleAD where
  type PropertyType "Size" SimpleAD = Value Prelude.Text
  set newValue SimpleAD {..} = SimpleAD {size = newValue, ..}
instance Property "VpcSettings" SimpleAD where
  type PropertyType "VpcSettings" SimpleAD = VpcSettingsProperty
  set newValue SimpleAD {..} = SimpleAD {vpcSettings = newValue, ..}