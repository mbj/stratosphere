module Stratosphere.ServiceCatalog.PortfolioProductAssociation (
        PortfolioProductAssociation(..), mkPortfolioProductAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortfolioProductAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html>
    PortfolioProductAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-acceptlanguage>
                                 acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-portfolioid>
                                 portfolioId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-productid>
                                 productId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-sourceportfolioid>
                                 sourcePortfolioId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortfolioProductAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> PortfolioProductAssociation
mkPortfolioProductAssociation portfolioId productId
  = PortfolioProductAssociation
      {haddock_workaround_ = (), portfolioId = portfolioId,
       productId = productId, acceptLanguage = Prelude.Nothing,
       sourcePortfolioId = Prelude.Nothing}
instance ToResourceProperties PortfolioProductAssociation where
  toResourceProperties PortfolioProductAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::PortfolioProductAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "SourcePortfolioId" Prelude.<$> sourcePortfolioId]))}
instance JSON.ToJSON PortfolioProductAssociation where
  toJSON PortfolioProductAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "SourcePortfolioId" Prelude.<$> sourcePortfolioId])))
instance Property "AcceptLanguage" PortfolioProductAssociation where
  type PropertyType "AcceptLanguage" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "PortfolioId" PortfolioProductAssociation where
  type PropertyType "PortfolioId" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation {portfolioId = newValue, ..}
instance Property "ProductId" PortfolioProductAssociation where
  type PropertyType "ProductId" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation {productId = newValue, ..}
instance Property "SourcePortfolioId" PortfolioProductAssociation where
  type PropertyType "SourcePortfolioId" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation
        {sourcePortfolioId = Prelude.pure newValue, ..}