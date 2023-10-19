package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Delivery;
import kr.ed.haebeop.domain.DeliveryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DeliveryMapper {
    public List<DeliveryVO> deliveryList() throws Exception;
    public DeliveryVO getdelivery(int dno) throws Exception;
    public void deliveryUpdate (Delivery delivery) throws Exception;
}
