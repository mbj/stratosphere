module Stratosphere.GlobalAccelerator.CrossAccountAttachment (
        module Exports, CrossAccountAttachment(..),
        mkCrossAccountAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GlobalAccelerator.CrossAccountAttachment.ResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CrossAccountAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-crossaccountattachment.html>
    CrossAccountAttachment {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-crossaccountattachment.html#cfn-globalaccelerator-crossaccountattachment-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-crossaccountattachment.html#cfn-globalaccelerator-crossaccountattachment-principals>
                            principals :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-crossaccountattachment.html#cfn-globalaccelerator-crossaccountattachment-resources>
                            resources :: (Prelude.Maybe [ResourceProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-crossaccountattachment.html#cfn-globalaccelerator-crossaccountattachment-tags>
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossAccountAttachment ::
  Value Prelude.Text -> CrossAccountAttachment
mkCrossAccountAttachment name
  = CrossAccountAttachment
      {haddock_workaround_ = (), name = name,
       principals = Prelude.Nothing, resources = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CrossAccountAttachment where
  toResourceProperties CrossAccountAttachment {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::CrossAccountAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Principals" Prelude.<$> principals,
                               (JSON..=) "Resources" Prelude.<$> resources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CrossAccountAttachment where
  toJSON CrossAccountAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Principals" Prelude.<$> principals,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" CrossAccountAttachment where
  type PropertyType "Name" CrossAccountAttachment = Value Prelude.Text
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {name = newValue, ..}
instance Property "Principals" CrossAccountAttachment where
  type PropertyType "Principals" CrossAccountAttachment = ValueList Prelude.Text
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {principals = Prelude.pure newValue, ..}
instance Property "Resources" CrossAccountAttachment where
  type PropertyType "Resources" CrossAccountAttachment = [ResourceProperty]
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {resources = Prelude.pure newValue, ..}
instance Property "Tags" CrossAccountAttachment where
  type PropertyType "Tags" CrossAccountAttachment = [Tag]
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {tags = Prelude.pure newValue, ..}