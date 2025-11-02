module Stratosphere.ManagedBlockchain.Accessor (
        Accessor(..), mkAccessor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Accessor
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-accessor.html>
    Accessor {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-accessor.html#cfn-managedblockchain-accessor-accessortype>
              accessorType :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-accessor.html#cfn-managedblockchain-accessor-networktype>
              networkType :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-accessor.html#cfn-managedblockchain-accessor-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessor :: Value Prelude.Text -> Accessor
mkAccessor accessorType
  = Accessor
      {haddock_workaround_ = (), accessorType = accessorType,
       networkType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Accessor where
  toResourceProperties Accessor {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Accessor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessorType" JSON..= accessorType]
                           (Prelude.catMaybes
                              [(JSON..=) "NetworkType" Prelude.<$> networkType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Accessor where
  toJSON Accessor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessorType" JSON..= accessorType]
              (Prelude.catMaybes
                 [(JSON..=) "NetworkType" Prelude.<$> networkType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessorType" Accessor where
  type PropertyType "AccessorType" Accessor = Value Prelude.Text
  set newValue Accessor {..} = Accessor {accessorType = newValue, ..}
instance Property "NetworkType" Accessor where
  type PropertyType "NetworkType" Accessor = Value Prelude.Text
  set newValue Accessor {..}
    = Accessor {networkType = Prelude.pure newValue, ..}
instance Property "Tags" Accessor where
  type PropertyType "Tags" Accessor = [Tag]
  set newValue Accessor {..}
    = Accessor {tags = Prelude.pure newValue, ..}