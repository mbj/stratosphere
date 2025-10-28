module Stratosphere.AppStream.Entitlement (
        module Exports, Entitlement(..), mkEntitlement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.Entitlement.AttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Entitlement
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-entitlement.html>
    Entitlement {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-entitlement.html#cfn-appstream-entitlement-appvisibility>
                 appVisibility :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-entitlement.html#cfn-appstream-entitlement-attributes>
                 attributes :: [AttributeProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-entitlement.html#cfn-appstream-entitlement-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-entitlement.html#cfn-appstream-entitlement-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-entitlement.html#cfn-appstream-entitlement-stackname>
                 stackName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntitlement ::
  Value Prelude.Text
  -> [AttributeProperty]
     -> Value Prelude.Text -> Value Prelude.Text -> Entitlement
mkEntitlement appVisibility attributes name stackName
  = Entitlement
      {haddock_workaround_ = (), appVisibility = appVisibility,
       attributes = attributes, name = name, stackName = stackName,
       description = Prelude.Nothing}
instance ToResourceProperties Entitlement where
  toResourceProperties Entitlement {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Entitlement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppVisibility" JSON..= appVisibility,
                            "Attributes" JSON..= attributes, "Name" JSON..= name,
                            "StackName" JSON..= stackName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Entitlement where
  toJSON Entitlement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppVisibility" JSON..= appVisibility,
               "Attributes" JSON..= attributes, "Name" JSON..= name,
               "StackName" JSON..= stackName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "AppVisibility" Entitlement where
  type PropertyType "AppVisibility" Entitlement = Value Prelude.Text
  set newValue Entitlement {..}
    = Entitlement {appVisibility = newValue, ..}
instance Property "Attributes" Entitlement where
  type PropertyType "Attributes" Entitlement = [AttributeProperty]
  set newValue Entitlement {..}
    = Entitlement {attributes = newValue, ..}
instance Property "Description" Entitlement where
  type PropertyType "Description" Entitlement = Value Prelude.Text
  set newValue Entitlement {..}
    = Entitlement {description = Prelude.pure newValue, ..}
instance Property "Name" Entitlement where
  type PropertyType "Name" Entitlement = Value Prelude.Text
  set newValue Entitlement {..} = Entitlement {name = newValue, ..}
instance Property "StackName" Entitlement where
  type PropertyType "StackName" Entitlement = Value Prelude.Text
  set newValue Entitlement {..}
    = Entitlement {stackName = newValue, ..}